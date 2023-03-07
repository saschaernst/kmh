import 'dart:async';

import 'package:event_bus/event_bus.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:storage_tools/base.dart';
import 'package:storage_tools/src/base/storage_state.dart';
import 'package:tools/extensions.dart';

abstract class StorageRepo<T> extends StateNotifier<Map<String, T>> {
  final EventBus _eventBus = EventBus();
  final T Function() _getDefValue;

  @protected
  final ValueNotifier<StorageState> repoState = ValueNotifier(
    const StorageState.none(),
  );

  StorageRepo(this._getDefValue, super.state);

  Future<Either<StorageResponse, Unit>> init();

  @protected
  Future<Either<StorageResponse, Unit>> runInitTask(
    TaskEither<StorageResponse, Map<String, T>> task,
  ) async {
    final result = await task.run();

    return result.match(
      (l) {
        repoState.value = const StorageState.error();

        return Left(l);
      },
      (r) {
        state = r;
        repoState.value = const StorageState.ready();

        return const Right(unit);
      },
    );
  }

  Map<String, T> get all => {...state};

  T read(String key) => state.read(key, _getDefValue);

  Future<Either<StorageResponse, Unit>> reset([Map<String, T> data]);

  Future<Either<StorageResponse, Unit>> add(String key, T value);

  Future<Either<StorageResponse, Unit>> update(
    String key,
    T Function(T value) updater,
  );

  Future<Either<StorageResponse, Unit>> delete(String key);

  bool hasKey(String key) => state.containsKey(key);

  bool hasValue(T value) => state.containsValue(value);

  bool get isEmpty => state.isEmpty;

  StreamSubscription listen(
    void Function(StorageRepoEvent<T> event) handler,
    bool Function(StorageRepoEvent<T> event) predicate,
  ) =>
      _eventBus.on<StorageRepoEvent<T>>().listen(
        ((event) {
          if (predicate(event)) {
            handler(event);
          }
        }),
      );

  @protected
  void fire(StorageRepoEvent<T> event) => _eventBus.fire(event);

  @protected
  void batchUpdateState(Map<String, T> nextState) {
    final prevState = state;
    state = nextState;

    for (final entry in nextState.entries) {
      final key = entry.key;
      final value = entry.value;

      if (!prevState.containsKey(key)) {
        fire(StorageRepoEvent.add(key, value));
      } else if (prevState[key] != value) {
        fire(StorageRepoEvent.update(key, value));
      }
    }

    for (final key in prevState.keys) {
      if (!nextState.containsKey(key)) {
        fire(StorageRepoEvent.delete(key));
      }
    }
  }

  @protected
  Either<StorageResponse, Unit> handleResult<TResult>(
    Either<StorageResponse, TResult> result,
    String key,
    bool Function(String key) handler,
  ) =>
      result.match(
        (l) => l.when(
            warning: (message) {
              handler(key);
              return Left(l);
            },
            error: (message) => Left(l)),
        (r) {
          handler(key);
          return const Right(unit);
        },
      );

  @protected
  bool deleteEntry(String key) => _updateState(
        hasKey(key),
        (s) => s.remove(key),
        StorageRepoEvent.delete(key),
      );

  @protected
  bool updateEntry(String key, value) => _updateState(
        hasKey(key) && !hasValue(value),
        (s) => s[key] = value,
        StorageRepoEvent.update(key, value),
      );

  @protected
  bool addEntry(String key, value) => _updateState(
        !hasKey(key),
        (s) => s[key] = value,
        StorageRepoEvent.add(key, value),
      );

  bool _updateState(
    bool isAllowed,
    void Function(Map<String, T> s) handler,
    StorageRepoEvent<T> event,
  ) {
    if (isAllowed) {
      final newState = {...state};
      handler(newState);
      state = newState;
      fire(event);
    }

    return isAllowed;
  }
}
