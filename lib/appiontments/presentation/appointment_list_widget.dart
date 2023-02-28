import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:kmh/appiontments/package.dart';

class AppointmentListWidget extends StatelessWidget {
  const AppointmentListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final list = context.watch<AppointmentsCubit>().state.data;

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => _EntryWidget(list[index]),
    );
  }
}

class _EntryWidget extends StatelessWidget {
  final AppointmentsData _data;

  const _EntryWidget(this._data);

  @override
  Widget build(BuildContext context) {
    final date = DateFormat.MMMd().format(_data.date);
    final time = DateFormat.Hm().format(_data.date);
    final duration = '${_data.duration} min';

    return Card(
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(date),
            Text(time),
          ],
        ),
        title: Text(_data.name),
        subtitle: Text(_data.city),
        trailing: Text(duration),
        onTap: () => context.go('/${_data.id}'),
      ),
    );
  }
}
