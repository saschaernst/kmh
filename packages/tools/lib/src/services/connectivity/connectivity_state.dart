import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_state.freezed.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState(ConnectivityResult result, bool hasData) =
      _ConnectivityState;

  factory ConnectivityState.none() => const ConnectivityState(
        ConnectivityResult.none,
        false,
      );
}
