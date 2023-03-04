import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kmh/appointments/package.dart';

class AppointmentListPage extends StatelessWidget {
  const AppointmentListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Termine'),
          actions: [
            IconButton(
              onPressed: () => context.push('/results'),
              icon: const Icon(Icons.fact_check),
            ),
          ],
        ),
        body: BlocProvider(
          create: (_) => AppointmentsCubit(
            context.read<CompanyService>(),
            context.read<DetailService>(),
            context.read<ResultService>(),
          ),
          child: const AppointmentListWidget(),
        ),
      );
}
