import 'package:go_router/go_router.dart';
import 'package:kmh/appointments/package.dart';

GoRouter initRouter() => GoRouter(
      initialLocation: '/appointments',
      routes: [
        GoRoute(
          path: '/appointments',
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
        GoRoute(
          path: '/results',
          builder: (context, state) => const AppointmentResultsPage(),
        ),
      ],
    );
