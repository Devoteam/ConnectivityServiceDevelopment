//import 'package:flutter/services.dart';
//
//class CarUxRestrictionsManager {
//  static const MethodChannel _channel = MethodChannel('com.example.car_ux_restrictions');
//
//  static void initialize() {
//    _channel.setMethodCallHandler(_handleMethodCall);
//  }
//
//  static Future<void> _handleMethodCall(MethodCall call) async {
//    if (call.method == 'onUxRestrictionsChanged') {
//      print('UX Restrictions: ${call.arguments['requiresDistractionOptimization']}');
//    }
//  }
//}