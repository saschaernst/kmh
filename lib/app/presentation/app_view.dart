import 'package:flutter/material.dart';
import 'package:kmh/appiontments/package.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: AppointmentListPage(),
      );
}
