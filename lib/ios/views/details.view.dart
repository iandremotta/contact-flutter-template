import 'package:Contacts/android/styles.dart';
import 'package:Contacts/ios/views/address.view.dart';
import 'package:Contacts/ios/views/editor-contact.view.dart';
import 'package:Contacts/models/contact.model.dart';
import 'package:flutter/cupertino.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text("Contato"),
            trailing: CupertinoButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => EditorContactView(
                      model: ContactModel(
                        id: "1",
                        name: "André",
                        email: "andre.motta@gmail.com",
                        phone: "122121212",
                      ),
                    ),
                  ),
                );
              },
              child: Icon(
                CupertinoIcons.pen,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://this-person-does-not-exist.com/img/avatar-b9a02aaeaeee859d71ebe3d4697b5f78.jpg'),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "André Motta",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "11 996793333",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  "andre@gmail.com",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CupertinoButton(
                      child: Icon(
                        CupertinoIcons.phone,
                        color: primaryColor,
                      ),
                      onPressed: null,
                    ),
                    CupertinoButton(
                      child: Icon(
                        CupertinoIcons.mail,
                        color: primaryColor,
                      ),
                      onPressed: null,
                    ),
                    CupertinoButton(
                      child: Icon(
                        CupertinoIcons.photo_camera,
                        color: primaryColor,
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Endereço",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Rua dos desenvolvedores",
                            ),
                            Text(
                              "SP",
                            )
                          ],
                        ),
                      ),
                      CupertinoButton(
                        child: Icon(
                          CupertinoIcons.pin,
                          color: primaryColor,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => AddresView(),
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
