import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:tools/services.dart';

class AppwriteAuthenticationService extends AuthenticationService<Session> {
  @override
  int parseError(Object error, StackTrace stackTrace) {
    final exception = error as AppwriteException;
    final code = exception.code ?? -1;

    return code;
  }
}
