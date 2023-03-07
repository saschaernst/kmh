import 'package:flutter/material.dart';

enum AppointmentState {
  open('Noch offen', Colors.black),
  success('Erfolgreich', Colors.green),
  failure('Fehlschlag', Colors.red),
  discontinued('Abgebrochen', Colors.orange),
  cancelledByUs('Von uns abgesagt', Colors.blue),
  cancelledByCustomer('Vom Kunden abgesagt', Colors.brown),
  ;

  const AppointmentState(this.label, this.color);

  final String label;
  final Color color;
}
