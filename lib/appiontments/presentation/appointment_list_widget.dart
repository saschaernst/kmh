import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kmh/appiontments/package.dart';

class AppointmentListWidget extends StatelessWidget {
  const AppointmentListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final list = context.watch<AppointmentsCubit>().state.data;

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final data = list[index];
        final date = DateFormat.MMMd().format(data.date);
        final time = DateFormat.Hm().format(data.date);
        final duration = '${data.duration} min';

        return Card(
          child: ListTile(
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(date),
                Text(time),
              ],
            ),
            title: Text(data.name),
            subtitle: Text(data.city),
            trailing: Text(duration),
            onTap: () => _onTap(
              context,
              data.id,
            ),
          ),
        );
      },
    );
  }

  void _onTap(BuildContext context, String id) {}
}
