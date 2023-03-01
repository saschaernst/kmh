import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kmh/appointments/package.dart';
import 'package:kmh/appointments/presentation/cubit/appointment_details_state.dart';
import 'package:storage_tools/base.dart';
import 'package:storage_tools/remote.dart';

class AppointmentCubit extends Cubit<AppointmentDetailsState> {
  final RemoteStorageService<Company> _companies;
  final RemoteStorageService<AppointmentDetails> _details;
  final RemoteStorageService<AppointmentResult> _results;
  final String _id;

  AppointmentCubit(this._companies, this._details, this._results, this._id)
      : super(const AppointmentDetailsState.loading()) {
    final details = _details.read(_id);
    final company = _companies.read(details.companyId);
    final data = AppointmentDetailsState.data(
      _id,
      details.date,
      details.duration,
      company.name,
      company.street,
      company.city,
      company.contact,
    );

    emit(data);
  }

  Future<Either<StorageResponse, Unit>> finish() => _results.add(
        const AppointmentResult(AppointmentState.success),
        id: _id,
      );
}
