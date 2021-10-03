import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/add_contact_page.dart';
import 'package:untitled/model/contact.dart';

class ContactPage extends StatefulWidget{
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage>{

  List<Contact> contacts = [];
  int lenght = 0;

  @override
  void initState() {
    contacts = Contact.contacts;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Book"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        lenght = Contact.contacts.length;
        print("Rehber Sayısı:" + lenght.toString());
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddContactPage()));
      }, child: Icon(Icons.add),),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index){
            Contact contact =  contacts[index];
            return Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children:<Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "http://placekitten.com/200/200",
                        ),
                        child: Text(
                          contact.name[0],
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(contact.name),
                            Text(contact.phoneNumber),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Divider(
                      height: 2,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}