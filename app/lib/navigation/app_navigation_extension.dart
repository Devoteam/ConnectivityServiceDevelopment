import 'package:connect_service_app/navigation/app_navigator.dart';

extension AppNavigatorExtension on int {
  String get routeBasedOnIndex {
    switch (this) {
      case 0:
        return AppNavigator.careConnectRemoteAccess;
      case 1:
        return AppNavigator.infotainmentOnline;
      case 2:
        return AppNavigator.traffication;
      case 3:
        return AppNavigator.payToPark;
      case 4:
        return AppNavigator.payToFuel;
      case 5:
        return AppNavigator.ambientLighting;
      default:
        return AppNavigator.careConnectRemoteAccess;
    }
  }
}