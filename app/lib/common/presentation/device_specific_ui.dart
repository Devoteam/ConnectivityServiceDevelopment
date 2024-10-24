import 'package:flutter/material.dart';

import '../platform_checker.dart';

class DeviceSpecificUI extends StatelessWidget {
  final Widget mobileUi;
  final Widget automotiveUi;

  const DeviceSpecificUI({
    super.key,
    required this.mobileUi,
    required this.automotiveUi,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: PlatformChecker.isAndroidAutomotive(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return mobileUi;
        } else if (snapshot.hasData && snapshot.data == true) {
          return automotiveUi;
        } else {
          return mobileUi;
        }
      },
    );
  }
}
