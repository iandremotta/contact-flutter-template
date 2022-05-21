import 'package:Contacts/ios/views/editor-contact.view.dart';
import 'package:Contacts/ios/styles.dart';
import 'package:Contacts/ios/views/details.view.dart';
import 'package:flutter/cupertino.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text("Meus contatos"),
            trailing: CupertinoButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => EditorContactView(),
                  ),
                );
              },
              child: Icon(CupertinoIcons.add),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: CupertinoTextField(
                    placeholder: "Pequisar",
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://this-person-does-not-exist.com/img/avatar-f2f6f30c6778e3471d2eaba1d7ed2431.jpg"),
                                ),
                                borderRadius: BorderRadius.circular(48),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "André Motta",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "11 99666-3500",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CupertinoButton(
                              child: Icon(
                                CupertinoIcons.person,
                                color: primaryColor,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => DetailsView(),
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                      ],
                    ),
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
