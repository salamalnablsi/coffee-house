import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app_coffee/Screens/SignUpScreen.dart';
import 'package:flutter_app_coffee/Screens/SignInScreen.dart';

class IUScreen extends StatefulWidget {
  static String id="IUScreen";
  @override
  _IUScreenState createState() => _IUScreenState();
}

class _IUScreenState extends State<IUScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.brown[50],
      body:Column(
        children: [
          Image.asset('images/best.png'),
          Container(
            height:300.h,width:300.w,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(20),
              color:Colors.brown,
            ),
            child:Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text('Welcome',style:TextStyle(color:Colors.brown[50],fontSize:35.sp,fontWeight:FontWeight.bold),),
                SizedBox(height:20.sp,),
                Text('Get the best coffee',style:TextStyle(color:Colors.brown[50],fontSize: 25.sp,fontWeight:FontWeight.w400),),
                SizedBox(height:20.sp,),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      height:60.h,width:200.w,
                      decoration:BoxDecoration(
                        color:Colors.brown[50],
                        borderRadius:BorderRadius.circular(40),
                      ),
                      child:InkWell(
                        onTap:(){
                          Navigator.popAndPushNamed(context,SignInScreen.id);
                        },
                        child:Center(
                          child:Text('Log In',style:TextStyle(color:Colors.brown,fontSize:25.sp),)),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
