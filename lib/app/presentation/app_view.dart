import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tools/utils.dart';

class AppView extends StatelessWidget {
  final GoRouter _router;

  const AppView(this._router, {super.key});

  @override
  Widget build(BuildContext context) => LifecycleManager(
        eventBus: context.read<EventBus>(),
        child: MaterialApp.router(
          routerConfig: _router,
        ),
      );
}
