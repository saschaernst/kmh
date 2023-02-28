import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kmh/appiontments/package.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: GoRouter(
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
                ]),
          ],
        ),
      );
}
