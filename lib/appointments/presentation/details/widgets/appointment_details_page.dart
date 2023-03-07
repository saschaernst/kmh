import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmh/appointments/package.dart';

class AppointmentDetailsPage extends StatelessWidget {
  final String _id;

  const AppointmentDetailsPage(this._id, {super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Termindetails'),
        ),
        body: SafeArea(
          child: BlocProvider(
            create: (context) => AppointmentListCubit(
              context.read<CompanyService>(),
              context.read<DetailService>(),
              context.read<ResultService>(),
              _id,
            ),
            child: const AppointmentDetailWidget(),
          ),
        ),
      );
}
