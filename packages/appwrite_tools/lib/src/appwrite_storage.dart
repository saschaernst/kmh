import 'package:appwrite/appwrite.dart';
import 'package:fpdart/fpdart.dart';
import 'package:storage_tools/base.dart';
import 'package:storage_tools/remote.dart';
import 'package:tools/utils.dart';

class AppwriteStorage<T> implements RemoteStorage<T> {
  final String _databaseId;
  final String _collectionId;
  final JsonMap Function(T data) _toJson;
  final T Function(JsonMap json) _fromJson;
  final List<String> _channels;
  final Databases _databases;
  final Realtime _realtime;

  RealtimeSubscription? _subscription;

  AppwriteStorage(
    Client client,
    this._databaseId,
    this._collectionId,
    this._toJson,
    this._fromJson,
    this._channels,
  )   : _databases = Databases(client),
        _realtime = Realtime(client);

  @override
  TaskEither<StorageResponse, T> create(String id, T data) =>
      TaskEither.tryCatch(
        () async {
          final document = await _databases.createDocument(
            databaseId: _databaseId,
            collectionId: _collectionId,
            documentId: id,
            data: _toJson(data),
          );

          return document.data;
        },
        _parseError,
      ).map(_fromJson);

  @override
  TaskEither<StorageResponse, T> read(String id) => TaskEither.tryCatch(
        () async {
          final document = await _databases.getDocument(
            databaseId: _databaseId,
            collectionId: _collectionId,
            documentId: id,
          );

          return document.data;
        },
        _parseError,
      ).map(_fromJson);

  @override
  TaskEither<StorageResponse, T> update(String id, T data) =>
      TaskEither.tryCatch(
        () async {
          final document = await _databases.updateDocument(
            databaseId: _databaseId,
            collectionId: _collectionId,
            documentId: id,
            data: _toJson(data),
          );

          return document.data;
        },
        _parseError,
      ).map(_fromJson);

  @override
  TaskEither<StorageResponse, Unit> delete(String id) => TaskEither.tryCatch(
        () async {
          await _databases.deleteDocument(
            databaseId: _databaseId,
            collectionId: _collectionId,
            documentId: id,
          );

          return unit;
        },
        _parseError,
      );

  @override
  TaskEither<StorageResponse, Map<String, T>> query() => TaskEither.tryCatch(
        () => _databases.listDocuments(
          databaseId: _databaseId,
          collectionId: _collectionId,
        ),
        _parseError,
      ).map(
        (r) => {
          for (final v in r.documents) v.$id: _fromJson(v.data),
        },
      );

  @override
  Stream<RemoteEvent<T>> get stream async* {
    _subscription ??=
        _channels.isNotEmpty ? _realtime.subscribe(_channels) : null;

    if (_subscription != null) {
      await for (final event in _subscription!.stream) {
        final type = event.events.first.split('.').last;
        final action = StorageAction.values.byName(type);
        final data = _fromJson(event.payload);

        yield RemoteEvent(action, event.payload['\$id'], data);
      }
    }
  }

  @override
  Future<void> dispose() async => _subscription?.close();

  StorageResponse _parseError(Object error, StackTrace stackTrace) {
    final exception = error as AppwriteException;
    final code = exception.code;

    //print('response code $code');

    switch (code) {
      case null:
        return const StorageResponse.warning('no_network_connection');
      case 400:
        return const StorageResponse.error('invalid_structure');
      case 401:
        return const StorageResponse.error('user_unauthorized');
      case 404:
        return const StorageResponse.error('no_update_possible');
      case 409:
        return const StorageResponse.error('doc_already_exists');
      default:
        return const StorageResponse.error('unknown_error');
    }
  }
}
