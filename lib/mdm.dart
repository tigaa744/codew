import 'dart:io';
import 'package:flutter/services.dart';

Future<bool> hasMdm() async {
  if (Platform.isMacOS) {
    try {
      final csrutilOutput = await Process.run('csrutil', ['status']);
      return csrutilOutput.stdout.toString().contains('MDM');
    } on PlatformException catch (_) {
      // Handle error.
      return false;
    }
  } else {
    return false;
  }
}
