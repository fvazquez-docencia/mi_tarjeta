import 'package:url_launcher/url_launcher.dart';

class CardViewModel {
  void sendEmail(String email, String subject) {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: _encodeQueryParameters(
          <String, String>{'subject': 'Email de prueba!'}),
    );

    launchUrl(emailLaunchUri);
  }

  void makePhoneCall(String number) {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: number,
    );
    launchUrl(launchUri);
  }

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}