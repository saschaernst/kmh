import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kmh/appointments/package.dart';

class AppView extends StatelessWidget {
  AppView({super.key});

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const AppointmentListPage(),
        routes: [
          GoRoute(
            path: ':id',
            builder: (context, state) => AppointmentDetailsPage(
              state.params['id']!,
            ),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
