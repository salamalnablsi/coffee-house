import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  String name;
  var icondata;
  bool secure;
  Function onSaved;
  Function validator;
  CustomTextField({this.name,this.icondata,this.secure,this.onSaved,this.validator}){}
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(10),
      child:TextFormField(
        obscureText:widget.secure,
        validator:widget.validator,
        onSaved: widget.onSaved,
        decoration:InputDecoration(
          labelText:widget.name,
          labelStyle:TextStyle(color:Colors.brown[600],fontSize:15.sp),
          prefixIcon:Icon(widget.icondata,color:Colors.brown[600],size:15.sp,),
        ),
      ),
    );
  }
}
