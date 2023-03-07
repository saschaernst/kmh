import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

Future<String> getAppPath([String file = '']) async {
  if (kIsWeb) {
    return file;
  }

  final dir = await getApplicationSupportDirectory();

  return p.join(dir.path, file);
}
