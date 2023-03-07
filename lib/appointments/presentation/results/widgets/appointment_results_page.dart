import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmh/app/package.dart';
import 'package:kmh/appointments/package.dart';
import 'package:kmh/appointments/presentation/results/widgets/appointment_results_widget.dart';

class AppointmentResultsPage extends StatelessWidget {
  const AppointmentResultsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => AppointmentResultsCubit(
          context.read<CompanyService>(),
          context.read<DetailService>(),
          context.read<ResultService>(),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Resultate'),
            actions: [
              _DeleteAllButton(),
            ],
          ),
          body: const SafeArea(
            child: AppointmentResultsWidget(),
          ),
        ),
      );
}

class _DeleteAllButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppointmentResultsCubit>().state;

    return IconButton(
      onPressed: state.isNotEmpty ? () => _onTap(context) : null,
      icon: const Icon(Icons.clear_all),
    );
  }

  Future<void> _onTap(BuildContext context) async {
    final result = await showAlertDialog<bool>(
          context,
          'Achtung!',
          'Sollen wirklich ALLE(!) Resultate gelöscht werden?',
          const [
            MapEntry('Ja', true),
            MapEntry('Nein', false),
          ],
        ) ??
        false;

    if (context.mounted && result) {
      context.read<ResultService>().reset();
    }
  }
}
