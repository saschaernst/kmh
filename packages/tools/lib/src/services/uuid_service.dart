import 'package:uuid/uuid.dart';

class UuidService {
  String get next => const Uuid().v1();
}
