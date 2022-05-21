import 'package:Contacts/android/styles.dart';
import 'package:Contacts/android/views/address.view.dart';
import 'package:Contacts/models/contact.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'editor-contact.view.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text("Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      )),
      body: Column(
        children: [
          SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  (100),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://this-person-does-not-exist.com/img/avatar-a94ee88688aedb0e66b3acc55778dca7.jpg"),
                ),
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
            "11 99679-3222",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Text(
            "andre.motta@uniodigital.com.br",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlatButton(
                onPressed: null,
                child: Icon(
                  Icons.phone,
                  color: primaryColor,
                ),
              ),
              FlatButton(
                onPressed: null,
                child: Icon(
                  Icons.email,
                  color: primaryColor,
                ),
              ),
              FlatButton(
                onPressed: null,
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
                child: Icon(
                  Icons.camera_enhance,
                  color: primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Text(
              "Endereço",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rua dos bobos, 04",
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  "São Paulo",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            isThreeLine: true,
            trailing: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddressView(),
                  ),
                );
              },
              child: Icon(
                Icons.pin_drop,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(
                  model: ContactModel(
                id: "1",
                name: "André Motta",
                email: "andre@gmail.com",
                phone: "12996798989",
              )),
            ),
          );
        },
        child: Icon(
          Icons.edit,
          color: accentCollor,
        ),
      ),
    );
  }
}
