import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmh/appointments/package.dart';
import 'package:storage_tools/remote.dart';

class AppointmentDetailsPage extends StatelessWidget {
  final String _id;

  const AppointmentDetailsPage(this._id, {super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Termin'),
        ),
        body: BlocProvider(
          create: (context) => AppointmentCubit(
            context.read<RemoteStorageService<Company>>(),
            context.read<RemoteStorageService<AppointmentDetails>>(),
            context.read<RemoteStorageService<AppointmentResult>>(),
            _id,
          ),
          child: const AppointmentDetailWidget(),
        ),
      );
}