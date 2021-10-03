import 'package:flutter/material.dart';
import 'package:untitled/contact_page.dart';

import 'model/contact.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {



  Widget build(BuildContext context){
    return MaterialApp(
      home: ContactPage()
    );
  }
}
