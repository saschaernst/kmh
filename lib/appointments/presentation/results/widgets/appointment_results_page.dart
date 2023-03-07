import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmh/appointments/package.dart';
import 'package:kmh/appointments/presentation/results/widgets/appointment_results_widget.dart';

class AppointmentResultsPage extends StatelessWidget {
  const AppointmentResultsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Resultate'),
          actions: [
            IconButton(
              onPressed: () => context.read<ResultService>().reset(),
              icon: const Icon(Icons.clear_all),
            ),
          ],
        ),
        body: SafeArea(
          child: BlocProvider(
            create: (context) => AppointmentResultsCubit(
              context.read<CompanyService>(),
              context.read<DetailService>(),
              context.read<ResultService>(),
            ),
            child: const AppointmentResultsWidget(),
          ),
        ),
      );
}
