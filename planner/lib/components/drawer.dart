import 'package:flutter/material.dart';


Drawer buildDrawerLayout(BuildContext context) {
  return new Drawer(
    child: new ListView(
      children: <Widget>[
        new DrawerHeader(
          padding: EdgeInsets.zero,
          child: new Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: <Color>[
                  const Color(0xFF3594DD),
                  const Color(0xFF5B16D0),
                ],
                begin: Alignment.topCenter,
                end:  Alignment.bottomCenter
              )
            ),
            child: new Stack(
              children: <Widget>[
                new Align(
                  alignment: Alignment.bottomRight,
                  child: new Padding(
                    padding: const EdgeInsets.only(right: 16 , bottom: 16),
                    child : new Text('مربی تست' , style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: "Lalezar"))
                  ),
                ),
                new Align(
                  alignment: Alignment.topRight,
                  child: new ListTile(
                    leading: Container( //axe profile home
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: new NetworkImage(
                                              "http://alirezamehri.ir/img/avatar.png")
                                              )
                              )
                              ),
                    title: new Text('علیرضا مهری', style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          )
        ),
        new ListTile(
          trailing: new Text('7' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),
          leading: new Icon(Icons.list),
          title: new Text('برنامه ها'),
          onTap: () {},
        ),
        new ListTile(
          trailing: new Text('1' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),
          leading: new Icon(Icons.person),
          title: new Text('مربی ها'),
          onTap: () {
            //Navigator.pop(context);
           // Navigator.push(context, new MaterialPageRoute(builder: (context) => new CreateChatScreen()));
          },
        ),
//        new Padding(
//          padding: const EdgeInsets.symmetric(horizontal: 16),
//          child: new Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              new Row(
//                children: <Widget>[
//                  new Icon(Icons.shopping_cart),
//                  new Padding(
//                    padding: const EdgeInsets.only(right: 16),
//                    child: new Text('محصولات' , style: TextStyle(fontWeight: FontWeight.bold)),
//                  )
//                ],
//              ),
//              new Text('5' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),
//            ],
//          ),
//        ),
        new ListTile(
          leading: new Icon(Icons.call),
          title: new Text('تماس با ما'),
          onTap: () {},
        ),
      ],
    ),
  );
}