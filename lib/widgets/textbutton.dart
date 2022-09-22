import 'package:flutter/material.dart';

class LoginLogOutBTN extends StatelessWidget {
  LoginLogOutBTN({this.btnColor,this.btnTitle,this.borderColor,this.pressed});

  String? btnTitle;
  Color? btnColor;
  Color? borderColor;
  VoidCallback? pressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: btnColor,
            padding: EdgeInsets.only(top: 16.0,bottom: 16.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0)
            ),
            side: BorderSide(color: borderColor!)
        ),
        onPressed: pressed, child: Text(btnTitle.toString(),style: TextStyle(color: Colors.black),)
    );
  }
}