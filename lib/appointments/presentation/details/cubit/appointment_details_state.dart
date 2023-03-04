import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_details_state.freezed.dart';

@freezed
class AppointmentDetailsState with _$AppointmentDetailsState {
  const factory AppointmentDetailsState.loading() = _Loading;
  const factory AppointmentDetailsState.data(
    String id,
    DateTime date,
    int duration,
    String name,
    String address,
    String city,
    String contact,
  ) = _Data;
}
