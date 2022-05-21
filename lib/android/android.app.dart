import 'package:Contacts/android/styles.dart';
import 'package:Contacts/android/views/home.view.dart';
import 'package:Contacts/android/views/splash.view.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: androidTheme(),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
