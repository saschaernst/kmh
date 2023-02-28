import 'package:appwrite_tools/appwrite_tools.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmh/app/init/package.dart';
import 'package:kmh/appiontments/package.dart';
import 'package:tools/services.dart';

Future<List<RepositoryProvider>> initRepositories() async {
  final appwriteService = AppwriteService(
    'https://cloud.appwrite.io/v1',
    'kmh_demo',
  );

  await appwriteService.createEmailSession(
    email: 'sascha.m.ernst@gmail.com',
    password: 'kmh_secret',
  );

  final uuidService = UuidService();

  final companies = await initRemoteService<Company>(
    appwriteService,
    uuidService,
    'kmh_demo',
    'companies',
    (data) => data.toJson(),
    Company.fromJson,
    Company.empty,
    ['documents'],
  );

  final appointmentDetails = await initRemoteService<AppointmentDetails>(
    appwriteService,
    uuidService,
    'kmh_demo',
    'appointment_details',
    (data) => data.toJson(),
    AppointmentDetails.fromJson,
    AppointmentDetails.empty,
    ['documents'],
  );

  final appointmentResults = await initRemoteService<AppointmentResult>(
    appwriteService,
    uuidService,
    'kmh_demo',
    'appointment_results',
    (data) => data.toJson(),
    AppointmentResult.fromJson,
    AppointmentResult.empty,
  );

  return [
    RepositoryProvider(create: (_) => companies),
    RepositoryProvider(create: (_) => appointmentDetails),
    RepositoryProvider(create: (_) => appointmentResults),
  ];
}