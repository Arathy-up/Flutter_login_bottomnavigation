import 'package:flutter/material.dart';
class Viewnotification extends StatefulWidget {
  @override
  _ViewnotificationState createState() => _ViewnotificationState();
}

class _ViewnotificationState extends State<Viewnotification> {
  var date=["12/09/2020","10/09/2020","08/09/2020","12/08/2020"];
  var news=["news1","news2","news2","news3"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: date.length,
          itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title: Text(date[index]),
            subtitle:Text(news[index]) ,
            leading: Icon(Icons.book),
            trailing:
            GestureDetector(
              onTap: (){
                setState(() {
                  date.removeAt(index);
                  news.removeAt(index);
                });
              },
                child: Icon(Icons.delete)),
          ),
        );
      }),
    );
  }
}
