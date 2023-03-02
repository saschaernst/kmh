import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:kmh/appointments/package.dart';

class AppointmentDetailWidget extends StatelessWidget {
  const AppointmentDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.read<AppointmentCubit>().state;

    return data.when(
      loading: () => const CircularProgressIndicator.adaptive(),
      data: (id, date, duration, name, address, city, contact) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _Entry(
                      Icons.calendar_month,
                      DateFormat.yMMMMd().format(date),
                    ),
                    _Entry(Icons.schedule, '$duration min'),
                    _Entry(Icons.store, name),
                    _Entry(Icons.signpost, address),
                    _Entry(Icons.location_city, city),
                    _Entry(Icons.hail, contact),
                  ],
                ),
              ),
            ),
            const Spacer(),
            _Button(
              'Abschließen',
              () => _showDialog(
                context,
                'Der Terminn wurde ...',
                [
                  const MapEntry(
                    'erfolgreich abgeschlossen',
                    AppointmentState.success,
                  ),
                  const MapEntry(
                    'erfolglos abgeschlossen',
                    AppointmentState.failure,
                  ),
                  const MapEntry(
                    'vorzeitig abgebrochen',
                    AppointmentState.discontinued,
                  ),
                ],
              ),
            ),
            _Button(
              'Abbrechen',
              () => _showDialog(
                context,
                'Der Termin wurde ...',
                [
                  const MapEntry(
                    'von uns abgebrochen',
                    AppointmentState.cancelledByUs,
                  ),
                  const MapEntry(
                    'vom Kunden abgebrochen',
                    AppointmentState.cancelledByCustomer,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showDialog(
    BuildContext context,
    String title,
    List<MapEntry<String, AppointmentState>> options,
  ) async {
    final result = await showDialog<AppointmentResult>(
          context: context,
          builder: (context) => AppointmentResultDialog(
            title,
            options,
          ),
        ) ??
        AppointmentResult.open();

    if (context.mounted && result.state != AppointmentState.open) {
      await context.read<AppointmentCubit>().finish(result);

      if (context.mounted) {
        context.pop();
      }
    }
  }
}

class _Button extends StatelessWidget {
  final String _label;
  final void Function() _onPressed;

  const _Button(this._label, this._onPressed);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ElevatedButton(
          onPressed: _onPressed,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              _label,
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
      );
}

class _Entry extends StatelessWidget {
  final IconData _icon;
  final String _content;

  const _Entry(this._icon, this._content);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            _icon,
            size: 40,
          ),
          title: Text(
            _content,
            style: const TextStyle(fontSize: 28),
          ),
        ),
      );
}
