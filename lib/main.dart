import 'dart:io';
import 'package:Contacts/android/android.app.dart';
import 'package:Contacts/ios/ios.app.dart';
import 'package:flutter/material.dart';

void main() {
  if (Platform.isAndroid) {
    runApp(IOSApp());
  } else {}
}
