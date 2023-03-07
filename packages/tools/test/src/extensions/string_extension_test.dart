import 'package:flutter_test/flutter_test.dart';
import 'package:tools/extensions.dart';

void main() {
  group(
    'StringExtension',
    () {
      group(
        'hardcoded',
        () {
          test(
            'return string itself',
            () {
              const string = 'abc';

              final result = string.hardcoded;

              expect(result, string);
            },
          );
        },
      );
    },
  );
}
