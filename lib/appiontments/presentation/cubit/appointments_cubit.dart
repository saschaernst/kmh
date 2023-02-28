import 'package:bloc/bloc.dart';
import 'package:kmh/appiontments/package.dart';
import 'package:storage_tools/remote.dart';
import 'package:tools/extensions.dart';

class AppointmentsCubit extends Cubit<AppointmentsState> {
  final RemoteStorageService<Company> _companies;
  final RemoteStorageService<AppointmentDetails> _details;
  final RemoteStorageService<AppointmentResult> _results;

  AppointmentsCubit(
    this._companies,
    this._details,
    this._results,
  ) : super(AppointmentsState(const [])) {
    _renderData();
  }

  Future<void> _renderData() async {
    final sortedKeys = _details.all.getSortedKeys(
      (a, b) => a.date.compareTo(b.date),
    );

    final list = <AppointmentsData>[];

    for (final key in sortedKeys) {
      final result = _results.read(key);

      if (result.state == AppointmentState.open) {
        final details = _details.read(key);
        final company = _companies.read(details.companyId);

        final data = AppointmentsData(
          key,
          details.date,
          details.duration,
          company.name,
          company.city,
        );

        list.add(data);
      }
    }

    emit(AppointmentsState(list));
  }
}
