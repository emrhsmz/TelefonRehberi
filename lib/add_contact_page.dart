import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/model/contact.dart';

class AddContactPage extends StatelessWidget{

@override
  Widget build(BuildContext context) {
  
  Contact.contacts.add(Contact(name: "Test", phoneNumber: "+90 553 469 34 52"));
  
    return Scaffold(
      appBar: AppBar(title: Text("Add New Contact"),),
    );
  }

}