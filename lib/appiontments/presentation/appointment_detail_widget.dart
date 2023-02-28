import 'package:flutter/material.dart';

class AppointmentDetailWidget extends StatelessWidget {
  final String _id;

  const AppointmentDetailWidget(this._id, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(_id);
  }
}
