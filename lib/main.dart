import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/Screens/ForgetPasswordScreen.dart';
import 'package:flutter_app_coffee/Screens/HomeScreen.dart';
import 'package:flutter_app_coffee/Screens/introScreen.dart';
import 'package:flutter_app_coffee/Screens/SignInScreen.dart';
import 'package:flutter_app_coffee/Screens/SignUpScreen.dart';
import 'package:flutter_app_coffee/Screens/SplachScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app_coffee/Screens/IUScreen.dart';

void main() {
  runApp(Coffee());
}

class Coffee extends StatefulWidget {
  @override
  _CoffeeState createState() => _CoffeeState();
}

class _CoffeeState extends State<Coffee> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
     builder:()=> MaterialApp(
      debugShowCheckedModeBanner:false,
       theme: ThemeData(primarySwatch:Colors.brown),
       initialRoute:HomeScreen.id,
      routes: {
        SplachScreen.id:(context)=>SplachScreen(),
        introScreen.id:(context)=>introScreen(),
        SignInScreen.id:(context)=>SignInScreen(),
        SignUp.id:(context)=>SignUp(),
        ForgetPassword.id:(context)=>ForgetPassword(),
        HomeScreen.id:(context)=>HomeScreen(),
        IUScreen.id:(context)=>IUScreen(),
      },
    ));
  }
}


