import 'package:flutter/material.dart';
import 'package:flutter_app_coffee/Screens/ForgetPasswordScreen.dart';
import 'package:flutter_app_coffee/widgets/CustomTextField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_app_coffee/Screens/HomeScreen.dart';
import 'package:flutter_app_coffee/Screens/SignUpScreen.dart';

class SignInScreen extends StatefulWidget {
  static String id="SignInScreen";
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.brown[50],
      body:ListView(
        children: [
          SizedBox(height:15.sp,),
         Image.asset('images/3.png',
             height: 200,
         ),
          CustomTextField(name:'Enter Your Email',icondata:Icons.email,secure:false,),
          CustomTextField(name:'Enter Your Password',icondata:Icons.lock,secure:true,),
          TextButton(
            child:Align(
              alignment:Alignment.topRight,
              child:Padding(
                padding:const EdgeInsets.all(10),
                child:Text('Forget Password ?',style:TextStyle(color:Colors.black,fontSize:20.sp),),
              ),
            ),
            onPressed: (){
              Navigator.pushNamed(context,ForgetPassword.id);
            },
          ),
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
                  child: Text('Sign In',style: TextStyle(color: Colors.brown[50],fontSize: 30.sp,fontWeight: FontWeight.bold),),
                ),
              ),
            )),
          ),
          Row(
            children: [
              Text('       Did not have account ?',style:TextStyle(color:Colors.black,fontSize:20.sp),),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.popAndPushNamed(context,SignUp.id);
                  });
                },
              child:Text('  SIGN UP',style:TextStyle(color:Colors.brown,fontSize:20.sp),))
            ],
          )
        ],
      ),
    );
  }
}

