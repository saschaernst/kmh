import 'package:flutter/material.dart';
import 'package:tools/extensions.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Termine'.hardcoded),
          ),
        ),
      );
}
