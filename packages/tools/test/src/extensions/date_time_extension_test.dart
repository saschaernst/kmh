import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tools/extensions.dart';

void main() {
  group(
    'test DateTime extensions',
    () {
      final earlier = DateTime(1999);
      final later = DateTime(2000, 12, 15, 11, 59, 40, 50, 60);

      test(
        'set time by TimeOfDay',
        () {
          final expected = DateTime(
            earlier.year,
            earlier.month,
            earlier.day,
            later.hour,
            later.minute,
            earlier.second,
            earlier.millisecond,
            earlier.microsecond,
          );

          final result = earlier.setTimeOfDay(
            TimeOfDay(
              hour: later.hour,
              minute: later.minute,
            ),
          );

          expect(result, isNot(earlier));
          expect(result, expected);
        },
      );

      test(
        'set time by DateTime',
        () {
          final expected = DateTime(
            earlier.year,
            earlier.month,
            earlier.day,
            later.hour,
            later.minute,
            later.second,
            later.millisecond,
            later.microsecond,
          );

          final result = earlier.setTime(later);

          expect(result, isNot(earlier));
          expect(result, isNot(later));
          expect(result, expected);
        },
      );

      test(
        'set date by DateTime',
        () {
          final expected = DateTime(
            later.year,
            later.month,
            later.day,
            earlier.hour,
            earlier.minute,
            earlier.second,
            earlier.millisecond,
            earlier.microsecond,
          );

          final result = earlier.setDate(later);

          expect(result, isNot(earlier));
          expect(result, isNot(later));
          expect(result, expected);
        },
      );
    },
  );
}
