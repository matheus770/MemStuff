import 'package:url_launcher/url_launcher.dart';

class CallHelper {
  void call(String number) => launch("tel: $number");
}
