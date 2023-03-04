import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointments_state.freezed.dart';

@freezed
class AppointmentsState with _$AppointmentsState {
  factory AppointmentsState(List<AppointmentsData> data) = _AppointmentsState;
}

@immutable
class AppointmentsData {
  final String id;
  final DateTime date;
  final int duration;
  final String name;
  final String city;

  const AppointmentsData(
    this.id,
    this.date,
    this.duration,
    this.name,
    this.city,
  );
}
