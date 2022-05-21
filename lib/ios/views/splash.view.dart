import 'package:Contacts/ios/styles.dart';
import 'package:flutter/cupertino.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: primaryColor,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Icon(
              CupertinoIcons.padlock,
              size: 72,
              color: accentCollor,
            ),
            Text(
              'Meus Contatos',
              style: TextStyle(color: accentCollor, fontSize: 18,),
            ),
          ],
        ),
      ),
    );
  }
}
