import 'package:flutter/material.dart';
import 'package:planner/components/drawer.dart';
import 'package:planner/models/plan_model.dart';

import 'customIcons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                      left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          CustomIcons.menu,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      "http://alirezamehri.ir/img/avatar.png")))),
                      Text("علیرضا مهری",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily: "Lalezar",
                            letterSpacing: 2.0,
                          )),
                      new PopupMenuButton<String>(
                          icon: Icon(
                            CustomIcons.option,
                            size: 12.0,
                            color: Colors.white,
                          ),
                          color: Colors.white,
                          onSelected: (String choice) {
                            print(choice);
                          },
                          itemBuilder: (BuildContext context) {
                            return [
                              new PopupMenuItem(
                                  value: 'edit',
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text('ویرایش'),
                                    ],
                                  )),
                              new PopupMenuItem(
                                  value: 'exit',
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text('خروج'),
                                    ],
                                  )),
                            ];
                          }),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 20.0, top: 15),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFff6e6e),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 22.0, vertical: 6.0),
                            child: Text("شاگرد",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Text("استاد: طوفانی",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(children: <Widget>[Text("آخرین برنامه ها",
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
