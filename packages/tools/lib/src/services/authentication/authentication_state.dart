import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState<T> with _$AuthenticationState<T> {
  const factory AuthenticationState.loggedOut() = LoggedOut;
  const factory AuthenticationState.loggingIn() = LoggingIn;
  const factory AuthenticationState.loggedIn(T session) = LoggedIn;
  const factory AuthenticationState.loggingOut() = LoggingOut;
}
