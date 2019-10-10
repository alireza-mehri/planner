import 'package:flutter/material.dart';

class Massage extends StatefulWidget {
  @override
  _MassageState createState() => _MassageState();
}

class _MassageState extends State<Massage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.green,
    body: Container(child: Center(child: Text("پیام ها"))),
    );
  }
}