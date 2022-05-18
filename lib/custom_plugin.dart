
import 'dart:async';

import 'package:flutter/services.dart';

class CustomPlugin {
  static const MethodChannel _channel = MethodChannel('custom_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<dynamic> get messages async{
     String? message = 'Hey its me ROshan';
    return message;
  }
}
