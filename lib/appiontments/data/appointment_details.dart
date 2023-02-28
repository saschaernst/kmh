import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_details.freezed.dart';
part 'appointment_details.g.dart';

@freezed
class AppointmentDetails with _$AppointmentDetails {
  const factory AppointmentDetails(
    DateTime date,
    int duration,
    String companyId,
  ) = _AppointmentDetails;

  factory AppointmentDetails.empty() => AppointmentDetails(
        DateTime.now(),
        0,
        '',
      );

  factory AppointmentDetails.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDetailsFromJson(json);
}
