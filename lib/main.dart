import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmh/app/init/package.dart';
import 'package:kmh/app/package.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiRepositoryProvider(
      providers: await initRepositories(),
      child: const AppView(),
    ),
  );
}
