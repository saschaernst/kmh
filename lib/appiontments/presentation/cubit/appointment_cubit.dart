import 'package:bloc/bloc.dart';
import 'package:kmh/appiontments/package.dart';
import 'package:kmh/appiontments/presentation/cubit/appointment_details_state.dart';
import 'package:storage_tools/remote.dart';

class AppointmentCubit extends Cubit<AppointmentDetailsState> {
  final RemoteStorageService<Company> _companies;
  final RemoteStorageService<AppointmentDetails> _details;
  final RemoteStorageService<AppointmentResult> _results;

  AppointmentCubit(this._companies, this._details, this._results)
      : super(const AppointmentDetailsState.loading());

  Future<void> init(String id) async {
    final details = _details.read(id);
    final company = _companies.read(details.companyId);

    final data = AppointmentDetailsState.data(
      id,
      details.date,
      details.duration,
      company.name,
      company.street,
      company.city,
      company.contact,
    );

    emit(data);
  }
}
