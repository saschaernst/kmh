import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmh/appointments/package.dart';
import 'package:storage_tools/remote.dart';

class AppointmentResultsPage extends StatelessWidget {
  const AppointmentResultsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Resultate'),
          actions: [
            IconButton(
              onPressed: () => context
                  .read<RemoteStorageService<AppointmentResult>>()
                  .reset(),
              icon: const Icon(Icons.clear_all),
            ),
          ],
        ),
        body: Container(),
      );
}