import 'package:flutter/material.dart';
import 'package:planner/components/drawer.dart';
import 'package:planner/models/plan_model.dart';
import 'package:search_widget/search_widget.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          key: _scaffoldKey,
          drawer: buildDrawerLayout(context),
          backgroundColor: Color(0xFF5036D5),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12.0, top: 30.0, bottom: 20.0),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 250.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          //axe profile home
                          width: 80.0,
                          height: 80.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "http://eqamp.ir/wp-content/uploads/2019/07/225-min.jpg")))),
                      Text("استاد طوفانی",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily: "Lalezar",
                            letterSpacing: 2.0,
                          )),
                      
                    ],
                  ),
                ),
                //search bottom


                //search bottom end
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(children: <Widget>[Text(" برنامه ها",
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: "Iransans",
                                letterSpacing: 1.0,
                              )),
                              Icon(
      Icons.arrow_downward,
      color: Colors.white,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
                              ],)
                ),
                Container(
                    height: MediaQuery.of(context).size.height - 185.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50.0)),
                    ),
                    //items in home page
                    child: new ListView.builder(
                      
          itemCount: planData.length,
          itemBuilder: (context, index) {
            return new Column(
              children: <Widget>[
                
                new Divider(
                  height: 15,
                ),
                new ListTile(  
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        planData[index].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  subtitle: new Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: new Text(
                      planData[index].text,
                      style: new TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                )
              ],
            );
          }),
                    ),
              ],
            ),
          ),
        ));
  }
}