import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          onTap: () => context.read<AppointmentResultsCubit>().delete(_data.id),
        ),
      );
}
