import 'package:flutter/material.dart';
import 'package:flutter_loginpage/Loginpage.dart';
import 'package:flutter_loginpage/Registerpage.dart';
class Mainpage extends StatelessWidget {
  TextEditingController user= TextEditingController();
  TextEditingController pass= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:<Widget> [
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.deepPurple),
            controller: user,
            decoration: InputDecoration(
              hintText: "Enter username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              prefixIcon: Icon(Icons.person)
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.deepPurple),
            controller: pass,
            decoration: InputDecoration(
                hintText: "Enter password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                prefixIcon: Icon(Icons.lock)
            ),
          ),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){
            var u=user.text;
            var p=pass.text;
            if(u=="admin"&& p=="1234")
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
            else
              print("incorrect password");
          },
          child: Text("login"),),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Registerpage()));
          },
          child:Text("Register"))
        ],
      ),
    );
  }
}
