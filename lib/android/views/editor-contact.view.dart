import 'package:Contacts/android/styles.dart';
import 'package:Contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel model;
  EditorContactView({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model == null ? Text("Novo contato") : Text("Editar contato"),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                initialValue: model?.name,
              ),
              TextFormField(
                initialValue: model?.phone,
              ),
              TextFormField(
                initialValue: model?.email,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: FlatButton.icon(
                  onPressed: () {},
                  color: primaryColor,
                  icon: Icon(
                    Icons.save,
                    color: accentCollor,
                  ),
                  label: Text("Salvar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
