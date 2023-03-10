import 'package:appwrite/appwrite.dart';
import 'package:appwrite_tools/appwrite_tools.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kmh/app/package.dart';
import 'package:kmh/appointments/package.dart';
import 'package:storage_tools/remote.dart';
import 'package:tools/services.dart';

Future<List<RepositoryProvider>> initRepositories() async {
  final client = AppwriteService(
    'https://cloud.appwrite.io/v1',
    //'http://192.168.0.45/v1',
    'kmh_demo',
  ).client;

  final authService = AppwriteAuthenticationService()
    ..setSessionCreator(
      () => Account(client).createEmailSession(
        email: 'sascha.m.ernst@gmail.com',
        password: 'kmh_secret',
      ),
    );

  await authService.login();

  final uuidService = UuidService();
  final connectivityService = ConnectivityService(
    Connectivity(),
    InternetConnectionChecker(),
  );
  await connectivityService.init();

  final companies = await initRemoteService<Company>(
    client,
    connectivityService,
    authService,
    uuidService,
    'kmh_demo',
    'companies',
    (data) => data.toJson(),
    Company.fromJson,
    Company.empty,
    RemoteStorageMode.readOnly,
    ['databases.kmh_demo.collections.companies.documents'],
  );

  final appointmentDetails = await initRemoteService<AppointmentDetails>(
    client,
    connectivityService,
    authService,
    uuidService,
    'kmh_demo',
    'appointment_details',
    (data) => data.toJson(),
    AppointmentDetails.fromJson,
    AppointmentDetails.empty,
    RemoteStorageMode.readOnly,
    ['databases.kmh_demo.collections.appointment_details.documents'],
  );

  final appointmentResults = await initRemoteService<AppointmentResult>(
    client,
    connectivityService,
    authService,
    uuidService,
    'kmh_demo',
    'appointment_results',
    (data) => data.toJson(),
    AppointmentResult.fromJson,
    AppointmentResult.open,
    RemoteStorageMode.fullAccess,
  );

  final repos = [
    RepositoryProvider(create: (_) => EventBus()),
    RepositoryProvider(create: (_) => companies),
    RepositoryProvider(create: (_) => appointmentDetails),
    RepositoryProvider(create: (_) => appointmentResults),
  ];

  return repos;
}
