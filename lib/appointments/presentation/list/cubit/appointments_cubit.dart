import 'package:bloc/bloc.dart';
import 'package:kmh/appointments/package.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:storage_tools/remote.dart';
import 'package:tools/extensions.dart';

class AppointmentsCubit extends Cubit<AppointmentsState> {
  final CompanyService _companies;
  final DetailService _details;
  final ResultService _results;

  final List<RemoveListener> _listeners = [];

  AppointmentsCubit(
    this._companies,
    this._details,
    this._results,
  ) : super(AppointmentsState(const [])) {
    _addListener(_companies);
    _addListener(_details);
    _addListener(_results);
    _renderData();
  }

  void _addListener<T>(RemoteStorageService<T> service) {
    final listener = service.notifier.addListener(
      (state) => _renderData(),
      fireImmediately: false,
    );
    _listeners.add(listener);
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

  @override
  Future<void> close() {
    for (final listener in _listeners) {
      listener();
    }

    return super.close();
  }
}
