import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kmh/appointments/package.dart';
import 'package:storage_tools/base.dart';
import 'package:tools/utils.dart';

class AppointmentListCubit extends Cubit<AppointmentDetailsState>
    with SubscriptionsMixin {
  final CompanyService _companies;
  final DetailService _details;
  final ResultService _results;
  final String _id;

  AppointmentListCubit(this._companies, this._details, this._results, this._id)
      : super(const AppointmentDetailsState.loading()) {
    addSub(
      _details.listen(
        (e) => _renderState(),
        (e) => e.key == _id,
      ),
    );

    addSub(
      _companies.listen(
        (e) => _renderState(),
        (e) => e.key == _details.read(_id).companyId,
      ),
    );

    _renderState();
  }

  void _renderState() {
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

  Future<Either<StorageResponse, Unit>> finish(AppointmentResult result) =>
      _results.add(
        result,
        id: _id,
      );

  @override
  Future<void> close() async {
    await disposeSubs();

    return super.close();
  }
}
