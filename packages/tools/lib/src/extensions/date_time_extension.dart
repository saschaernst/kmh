import 'package:flutter/material.dart';

extension DateTimeExtension on DateTime {
  DateTime setTimeOfDay(TimeOfDay time) => DateTime(
        year,
        month,
        day,
        time.hour,
        time.minute,
      );

  DateTime setTime(DateTime time) => DateTime(
        year,
        month,
        day,
        time.hour,
        time.minute,
        time.second,
        time.millisecond,
        time.microsecond,
      );

  DateTime setDate(DateTime date) => DateTime(
        date.year,
        date.month,
        date.day,
        hour,
        minute,
        second,
        millisecond,
        microsecond,
      );
}
