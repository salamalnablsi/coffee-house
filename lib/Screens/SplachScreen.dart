import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/Screens/introScreen.dart';
import 'dart:async';

class SplachScreen extends StatefulWidget {
  static String id="SplachScreen";
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.popAndPushNamed(context,introScreen.id);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.brown[50],
      body:Center(
        child:Image.asset('images/Coffee house.png'),
      ),
    );
  }
}