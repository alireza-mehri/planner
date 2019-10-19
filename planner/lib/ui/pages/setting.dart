import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Center(child: 
      FlareActor(
        "animations/Loading.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        animation: "Alarmm",
        ),)
    );
  }
}