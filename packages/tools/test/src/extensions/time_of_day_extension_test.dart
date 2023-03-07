import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tools/extensions.dart';

void main() {
  group(
    'test TimeOfDay extensions',
    () {
      test(
        'return TimeOfDay as DateTime',
        () {
          const hour = 12;
          const minute = 59;
          final expected = DateTime(0, 0, 0, hour, minute);

          final result = const TimeOfDay(
            hour: hour,
            minute: minute,
          ).toDateTime();

          expect(result, expected);
        },
      );
    },
  );
}
