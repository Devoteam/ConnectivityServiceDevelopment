import 'package:device_info_plus/device_info_plus.dart';

class PlatformChecker {
  static Future<bool> isAndroidAutomotive() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;

    final bool isAutomotive = androidInfo.systemFeatures.contains('android.hardware.type.automotive');

    return isAutomotive;
  }
}
