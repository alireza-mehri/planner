import 'package:flutter/material.dart';
import 'package:planner/models/chat_model.dart';

class Massage extends StatefulWidget {
  @override
  _MassageState createState() => _MassageState();
}

class _MassageState extends State<Massage> {
  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: new ListView.builder(
          itemCount: dummyData.length,
          itemBuilder: (context, index) {
            return new Column(
              children: <Widget>[
                new Divider(
                  height: 10,
                ),
                new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage:
                        new NetworkImage(dummyData[index].avatarUrl),
                    backgroundColor: Colors.grey,
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        dummyData[index].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        dummyData[index].time,
                        style: new TextStyle(color: Colors.grey, fontSize: 14),
                      )
                    ],
                  ),
                  subtitle: new Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: new Text(
                      dummyData[index].message,
                      style: new TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
