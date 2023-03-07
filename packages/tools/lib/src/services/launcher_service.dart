import 'package:url_launcher/url_launcher.dart';

class LauncherService {
  Future<bool> launch(String url) async {
    final uri = Uri.parse(url);

    return await canLaunchUrl(uri) && await launchUrl(uri);
  }
}
