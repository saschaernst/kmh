import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmh/appiontments/package.dart';
import 'package:storage_tools/remote.dart';
import 'package:tools/extensions.dart';

class AppointmentListPage extends StatelessWidget {
  const AppointmentListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Termine'.hardcoded),
        ),
        body: BlocProvider(
          create: (_) => AppointmentsCubit(
            context.read<RemoteStorageService<Company>>(),
            context.read<RemoteStorageService<AppointmentDetails>>(),
            context.read<RemoteStorageService<AppointmentResult>>(),
          ),
          child: const AppointmentListWidget(),
        ),
      );
}
