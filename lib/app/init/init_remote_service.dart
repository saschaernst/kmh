import 'package:appwrite/appwrite.dart';
import 'package:appwrite_tools/appwrite_tools.dart';
import 'package:sembast_tools/sembast_tools.dart';
import 'package:storage_tools/local.dart';
import 'package:storage_tools/remote.dart';
import 'package:tools/services.dart';
import 'package:tools/utils.dart';

Future<RemoteStorageService<T>> initRemoteService<T>(
  Client client,
  ConnectivityService connectivityService,
  AuthenticationService authenticationService,
  UuidService uuids,
  String databaseId,
  String collectionId,
  JsonMap Function(T data) toJson,
  T Function(JsonMap json) fromJson,
  T Function() getDefault,
  RemoteStorageMode mode, [
  List<String> channels = const [],
]) async {
  final localRepo = await createSembastRepo(
    collectionId,
    fromJson,
    (v) => LocalStorageRepo(v, getDefault),
  );

  final changesRepo = await createSembastRepo(
    '${collectionId}_changes',
    StorageChange.fromJson,
    (v) => LocalStorageRepo(v, StorageChange.no),
  );

  final remoteSource = AppwriteStorage(
    client,
    databaseId,
    collectionId,
    toJson,
    fromJson,
    channels,
  );

  final remoteRepo = RemoteStorageRepo(
    remoteSource,
    getDefault,
  );

  final remoteService = RemoteStorageService(
    remoteRepo,
    localRepo,
    changesRepo,
    connectivityService,
    authenticationService,
    uuids,
    mode,
  );

  //await remoteService.init();

  return remoteService;
}
