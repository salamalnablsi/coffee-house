import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app_coffee/widgets/CustomTextField.dart';
import 'package:flutter_app_coffee/Screens/HomeScreen.dart';

class SignUp extends StatefulWidget {
  static String id="SignUp";
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var signUpkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body:ListView(
        children: [
          SizedBox(height:15.sp,),
          Image.asset('images/3.png',
            height: 200,
          ),
          Form(
            key: signUpkey,
          child:Column(
           children:[
          CustomTextField(name:'Enter Your Name',icondata:Icons.person,secure:false,),
          CustomTextField(name:'Enter Your Email',icondata:Icons.email,secure:false,),
          CustomTextField(name:'Enter Your Password',icondata:Icons.lock,secure:true,),
          CustomTextField(name:'Confirm Password',icondata:Icons.lock,secure:true,),
            ])),
          InkWell(
            onTap:(){
              setState(() {
                Navigator.pushNamedAndRemoveUntil(context, HomeScreen.id, (route) => false);
              });
            },
            child:Padding(
                padding:const EdgeInsets.all(15),
                child:Container(
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Sign Up',style: TextStyle(color: Colors.brown[50],fontSize: 30.sp,fontWeight: FontWeight.bold),),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
