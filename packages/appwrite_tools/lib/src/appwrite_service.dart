import 'package:appwrite/appwrite.dart';

class AppwriteService {
  final Client _client;

  AppwriteService(
    String endPoint,
    String project, {
    bool selfSigned = false,
  }) : _client = Client(
          endPoint: endPoint,
          selfSigned: selfSigned,
        ).setProject(project);

  Client get client => _client;
}
