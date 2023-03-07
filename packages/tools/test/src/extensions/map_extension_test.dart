import 'package:flutter_test/flutter_test.dart';
import 'package:tools/extensions.dart';

void main() {
  group(
    'test Map extensions',
    () {
      const key = 'a';
      const zero = 0;
      const one = 1;
      final map = {key: zero};

      test(
        'read values null safe',
        () {
          final result = map.read(key, () => one);

          expect(result, zero);
        },
      );

      test(
        'return default value for missing key',
        () {
          final result = map.read('', () => one);

          expect(result, one);
        },
      );
    },
  );
}
