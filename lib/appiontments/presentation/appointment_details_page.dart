import 'package:flutter/material.dart';
import 'package:kmh/appiontments/package.dart';

class AppointmentDetailsPage extends StatelessWidget {
  final String _id;

  const AppointmentDetailsPage(this._id, {super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Termin'),
        ),
        body: AppointmentDetailWidget(_id),
      );
}
