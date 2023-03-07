import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:kmh/appointments/package.dart';
import 'package:storage_tools/remote.dart';
import 'package:tools/utils.dart';

class AppointmentResultsCubit extends Cubit<List<AppointmentResultData>>
    with ListenersMixin {
  final CompanyService _companies;
  final DetailService _details;
  final ResultService _results;

  AppointmentResultsCubit(
    this._companies,
    this._details,
    this._results,
  ) : super(const []) {
    _addListener(_companies);
    _addListener(_details);
    _addListener(_results);
    _renderData();
  }

  void _addListener<T>(RemoteStorageService<T> service) {
    final listener = service.notifier.addListener(
      (_) => _renderData(),
      fireImmediately: false,
    );
    addListener(listener);
  }

  Future<void> _renderData() async {
    final list = <AppointmentResultData>[];

    for (final entry in _results.all.entries) {
      final key = entry.key;
      final result = entry.value;

      final details = _details.read(key);
      final company = _companies.read(details.companyId);

      final data = AppointmentResultData(
        key,
        company.name,
        result.comment,
        result.state,
      );

      list.add(data);
    }

    emit(list);
  }

  Future<void> delete(String id) => _results.delete(id);

  @override
  Future<void> close() {
    disposeListeners();
    return super.close();
  }
}

@immutable
class AppointmentResultData {
  final String id;
  final String name;
  final String comment;
  final AppointmentState state;

  const AppointmentResultData(this.id, this.name, this.comment, this.state);
}
