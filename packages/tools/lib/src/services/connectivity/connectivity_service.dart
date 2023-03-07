import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tools/services.dart';

class ConnectivityService extends StateNotifier<ConnectivityState> {
  final Connectivity _connectivity;
  final InternetConnectionChecker _checker;
  late StreamSubscription<ConnectivityResult> _sub;

  ConnectivityService(this._connectivity, this._checker)
      : super(ConnectivityState.none()) {
    _sub = _connectivity.onConnectivityChanged.listen(_onChange);
  }

  Future<void> init() async => _onChange(
        await _connectivity.checkConnectivity(),
      );

  Future<void> _onChange(ConnectivityResult result) async {
    final hasData = result == ConnectivityResult.none
        ? false
        : await _checker.hasConnection;
    state = ConnectivityState(result, hasData);
  }

  ConnectivityState get current => state;

  @override
  @mustCallSuper
  Future<void> dispose() async {
    await _sub.cancel();

    super.dispose();
  }
}
