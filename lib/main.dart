import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmh/app/package.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final repos = await initRepositories();
  final router = initRouter();

  runApp(
    MultiRepositoryProvider(
      providers: repos,
      child: AppView(router),
    ),
  );
}
