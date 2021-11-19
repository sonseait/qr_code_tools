import 'dart:async';
import 'package:flutter/services.dart';

class QrCodeToolsPlugin {
  static const MethodChannel _channel = const MethodChannel('qr_code_tools');

  /// [filePath] is local file path
  static Future<String?> decodeFrom(String filePath) async {
    return _channel.invokeMethod<String>('decoder', {'file': filePath});
  }
}
