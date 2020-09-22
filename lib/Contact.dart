import 'package:flutter/material.dart';
class Contact extends StatelessWidget {
  var name=["Arun"];
  var phone=["8281814824"];
  var email=["aruns@gmail.com"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount:name.length ,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Name:"+name[index]),
                subtitle: Text("Phone:"+phone[index]+"\n"+"email:"+email[index]),
              ),
            );
          }),
    );
  }
}
