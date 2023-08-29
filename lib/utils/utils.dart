import 'package:flutter/foundation.dart';

class Utils {
  Utils._();

  static const B = 1;
  static const KB = B * 1024;
  static const MB = KB * 1024;
  static const GB = MB * 1024;

  static void log(String tag, Object? message) {
    if (kDebugMode) {
      print('[$tag] $message');
    }
  }

  static String convertBytesToString(int bytes) {
    if (bytes < KB) {
      return '$bytes B';
    } else if (bytes < MB) {
      final string = (bytes / KB).toStringAsFixed(2);
      return '$string KB';
    } else if (bytes < GB) {
      final string = (bytes / MB).toStringAsFixed(2);
      return '$string MB';
    } else {
      final string = (bytes / GB).toStringAsFixed(2);
      return '$string GB';
    }
  }
}
