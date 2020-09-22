import 'package:flutter/material.dart';
import 'package:flutter_loginpage/Contact.dart';
import 'package:flutter_loginpage/Viewnotification.dart';
class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var lists=[Viewnotification(),Contact()];
  int _count=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: lists[_count],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _count,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey,
            onTap: (index){
            setState(() {
              _count=index;
            });

            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.book),
              title: Text("View Notification")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.phone),
                  title: Text("Contact")),
            ]),
      ),
    );
  }
}
