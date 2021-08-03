import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app_coffee/widgets/CustomTextField.dart';
import 'package:flutter_app_coffee/Screens/SignInScreen.dart';

class ForgetPassword extends StatefulWidget {
  static String id="ForgetPassword";
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.brown[50],
      body:Column(
        children: [
          SizedBox(height:50.sp,),
          Image.asset('images/3.png',
            height: 200,
          ),
          CustomTextField(name:'Enter Your Email',icondata:Icons.email,secure:false,),
          InkWell(
            onTap:(){
              setState(() {
                Navigator.pushNamedAndRemoveUntil(context, SignInScreen.id, (route) => false);
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
                      child: Text('Reset Password',style: TextStyle(color: Colors.brown[50],fontSize: 30.sp,fontWeight: FontWeight.bold),),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
