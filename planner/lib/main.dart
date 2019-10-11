import 'package:flutter/material.dart';
import 'package:planner/ui/Home_page.dart';
import 'package:planner/ui/intro_screen.dart';
//import 'package:planner/ui/bottom_navy_bar.dart';
import 'package:planner/ui/login_page.dart';
import 'package:planner/ui/splash_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'morabi',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Iransans"
      
      ),
        initialRoute: "/splash_screen",
        routes: {
          "/splash_screen" : (context) => new Directionality(textDirection: TextDirection.rtl, child: new SplashScreen()),
          "/" : (context) => new Directionality(textDirection: TextDirection.ltr, child: LoginPage()),
          "/intro" : (context) => new Intro(),
          "/home" : (context) => new Directionality(textDirection: TextDirection.ltr, child: Homemain(title: 'مربی')),
          
        },
    );
  }
}