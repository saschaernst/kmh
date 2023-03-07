import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tools/services.dart';

abstract class AuthenticationService<T>
    extends StateNotifier<AuthenticationState<T>> {
  Future<T> Function()? _createSession;

  AuthenticationService() : super(const AuthenticationState.loggedOut());

  bool get isLoggedIn => state is LoggedIn;

  void setSessionCreator(Future<T> Function() createSession) =>
      _createSession = createSession;

  Future<AuthenticationState<T>> login() async {
    if (state is LoggedIn) return state;

    if (_createSession == null) return state;

    while (state is LoggingIn || state is LoggingOut) {
      await Future.delayed(const Duration(seconds: 1));

      if (state is LoggedIn || state is LoggedOut) {
        return state;
      }
    }

    state = const AuthenticationState.loggingIn();

    final result = await TaskEither<int, T>.tryCatch(
      _createSession!,
      parseError,
    ).run();

    return result.match(
      (l) => state = const AuthenticationState.loggedOut(),
      (r) => state = AuthenticationState.loggedIn(r),
    );
  }

  @protected
  int parseError(Object error, StackTrace stackTrace);
}
