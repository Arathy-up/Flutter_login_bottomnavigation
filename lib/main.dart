import 'package:flutter/material.dart';
import 'package:flutter_loginpage/Mainpage.dart';

void main()=>runApp(MyLoginApp());
class MyLoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MY LOGIN APP"),
        ),
        body: Mainpage() ,
      ),
    );
  }
}
