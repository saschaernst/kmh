import 'package:flutter_test/flutter_test.dart';
import 'package:tools/extensions.dart';

void main() {
  group(
    'ListExtension',
    () {
      group(
        'lastIndex',
        () {
          test(
            'get last index from non-empty list',
            () {
              final result = [1, 2].lastIndex;

              expect(result, 1);
            },
          );

          test(
            'get -1 from empty list',
            () {
              final result = [].lastIndex;

              expect(result, -1);
            },
          );
        },
      );
    },
  );
}
