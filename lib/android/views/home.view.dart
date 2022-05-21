import 'package:Contacts/android/styles.dart';
import 'package:Contacts/android/views/details.view.dart';
import 'package:Contacts/android/views/editor-contact.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Meus contatos"),
          centerTitle: true,
          leading: FlatButton(
            onPressed: () {},
            child: Icon(
              Icons.search,
              color: Theme.of(context).primaryColor,
            ),
          ),
          // actions: [
          //   Text("1"),
          //   Text("2"),
          // ],
        ),
        body: ListView(
          children: [
            ListTile(
                title: Text("André Motta"),
                subtitle: Text("12-996793596"),
                leading: Container(
                  width: 48,
                  height: 48,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://this-person-does-not-exist.com/img/avatar-c36ec07c5cd3aa0ec8e87b8196f873df.jpg"),
                      )),
                ),
                trailing: FlatButton(
                  child: Icon(
                    Icons.message,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsView();
                        },
                      ),
                    );
                  },
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditorContactView(),
              ),
            );
          },
          child: Icon(
            Icons.add,
            color: accentCollor,
          ),
          backgroundColor: primaryColor,
        ));
  }
}
