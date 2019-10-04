import 'package:flutter/material.dart';
import 'package:planner/ui/login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'morabi',
      theme: new ThemeData(

        primarySwatch: Colors.red,
      ),
      home: new LoginPage(),
    );
  }
}