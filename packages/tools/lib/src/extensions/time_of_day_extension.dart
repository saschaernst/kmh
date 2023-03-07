import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  DateTime toDateTime() => DateTime(0, 0, 0, hour, minute);
}
