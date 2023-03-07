import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:kmh/appointments/package.dart';
import 'package:storage_tools/remote.dart';
import 'package:tools/extensions.dart';
import 'package:tools/utils.dart';

class AppointmentsCubit extends Cubit<List<AppointmentsData>>
    with ListenersMixin {
  final CompanyService _companies;
  final DetailService _details;
  final ResultService _results;

  AppointmentsCubit(
    this._companies,
    this._details,
    this._results,
  ) : super(const []) {
    _addListener(_companies);
    _addListener(_details);
    _addListener(_results);
    _renderData();
  }

  void _addListener<T>(RemoteStorageService<T> service) => addByNotifier(
        service.notifier,
        (_) => _renderData(),
        fireImmediately: false,
      );

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

    emit(list);
  }

  @override
  Future<void> close() {
    disposeListeners();

    return super.close();
  }
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
