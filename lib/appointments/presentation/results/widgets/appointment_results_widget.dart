import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmh/app/package.dart';
import 'package:kmh/appointments/package.dart';

class AppointmentResultsWidget extends StatelessWidget {
  const AppointmentResultsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final list = context.watch<AppointmentResultsCubit>().state;

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => _EntryWidget(list[index]),
    );
  }
}

class _EntryWidget extends StatelessWidget {
  final AppointmentResultData _data;

  const _EntryWidget(this._data);

  @override
  Widget build(BuildContext context) => Card(
        child: ListTile(
          title: Text(_data.name),
          subtitle: Text(_data.comment),
          isThreeLine: true,
          trailing: Text(
            _data.state.label,
            style: TextStyle(color: _data.state.color),
          ),
          onTap: () => _onTap(context),
        ),
      );

  Future<void> _onTap(BuildContext context) async {
    final result = await showAlertDialog<bool>(
          context,
          'Achtung!',
          'Soll das Resultat wirklich gelöscht werden?',
          const [
            MapEntry('Ja', true),
            MapEntry('Nein', false),
          ],
        ) ??
        false;

    if (context.mounted && result) {
      context.read<AppointmentResultsCubit>().delete(_data.id);
    }
  }
}
