import 'package:appwrite_tools/appwrite_tools.dart';
import 'package:sembast_tools/sembast_tools.dart';
import 'package:storage_tools/local.dart';
import 'package:storage_tools/remote.dart';
import 'package:tools/services.dart';
import 'package:tools/utils.dart';

Future<RemoteStorageService<T>> initRemoteService<T>(
  AppwriteService serviceProvider,
  UuidService uuids,
  String databaseId,
  String collectionId,
  JsonMap Function(T data) toJson,
  T Function(JsonMap json) fromJson,
  T Function() getDefault, [
  List<String> channels = const [],
]) async {
  final localRepo = await createSembastRepo(
    collectionId,
    fromJson,
    (v) => LocalStorageRepo(v, getDefault),
  );

  final remoteCache = await createSembastRepo(
    '${collectionId}_cache',
    StorageEvent.fromJson,
    (v) => LocalStorageRepo(v, StorageEvent.empty),
  );

  final remoteSource = AppwriteStorage(
    serviceProvider.databases,
    databaseId,
    collectionId,
    toJson,
    fromJson,
    serviceProvider.subscribeTo(channels),
  );

  final remoteRepo = RemoteStorageRepo(
    remoteSource,
    getDefault,
  );

  final remoteService = RemoteStorageService(
    remoteRepo,
    localRepo,
    remoteCache,
    uuids,
  );

  await remoteService.init();

  return remoteService;
}
