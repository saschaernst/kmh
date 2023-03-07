import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_results_state.freezed.dart';

@freezed
class AppointmentResultsState with _$AppointmentResultsState {
  const factory AppointmentResultsState(List<AppointmentResultData> list) =
      _AppointmentResultsState;
}

@immutable
class AppointmentResultData {}
