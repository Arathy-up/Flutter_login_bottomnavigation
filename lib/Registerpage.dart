import 'package:flutter/material.dart';
import 'package:flutter_loginpage/Mainpage.dart';
import 'package:flutter_loginpage/main.dart';
class Registerpage extends StatefulWidget {
  @override
  _RegisterpageState createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  TextEditingController pass1=TextEditingController();
  TextEditingController pass2=TextEditingController();
  int check=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Register Page"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 15.0,),
                TextField(
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                      hintText: "Enter Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      prefixIcon: Icon(Icons.person)
                  ),
                ),
                SizedBox(height: 15.0,),
                TextField(
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                      hintText: "Enter Email-id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      prefixIcon: Icon(Icons.mail)
                  ),
                ),
                SizedBox(height: 15.0,),
                TextField(
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                      hintText: "Mobile Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      prefixIcon: Icon(Icons.phone)
                  ),
                ),
                SizedBox(height: 15.0,),
                TextField(
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      prefixIcon: Icon(Icons.person)
                  ),
                ),
                SizedBox(height: 15.0,),
                TextField(
                  style: TextStyle(color: Colors.blue),
                  controller: pass1,
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      prefixIcon: Icon(Icons.lock)
                  ),
                ),
                SizedBox(height: 15.0,),
                TextField(
                  style: TextStyle(color: Colors.blue),
                  controller: pass2,
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      prefixIcon: Icon(Icons.lock)
                  ),
                ),
                SizedBox(height: 15.0,),
                RaisedButton(onPressed: (){
                  setState(() {
                    var password=pass1.text;
                    var confirmpassword=pass2.text;
                    if(password==confirmpassword)
                    {
                      check=1;
                    }

                  });


                },
                  child: Text("Register"),),
                SizedBox(height: 15.0,),
                RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyLoginApp()));


                },
                  child: Text("Back To Login"),),
                check==1?Text("Password correct"):Text("Incorrect Password"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

