import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kmh/appiontments/data/appointment_state.dart';

part 'appointment_result.freezed.dart';
part 'appointment_result.g.dart';

@freezed
class AppointmentResult with _$AppointmentResult {
  const factory AppointmentResult(
    AppointmentState state, [
    @Default('') String comment,
  ]) = _AppointmentResult;

  factory AppointmentResult.empty() => const AppointmentResult(
        AppointmentState.open,
      );

  factory AppointmentResult.fromJson(Map<String, dynamic> json) =>
      _$AppointmentResultFromJson(json);
}
