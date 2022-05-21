import 'package:Contacts/ios/styles.dart';
import 'package:Contacts/ios/views/home.view.dart';
import 'package:Contacts/ios/views/splash.view.dart';
import 'package:flutter/cupertino.dart';

class IOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: iosTheme(),
      home: CupertinoPageScaffold(
        child: Container(
          child: Center(
            child: HomeView(),
          ),
        ),
      ),
    );
  }
}
