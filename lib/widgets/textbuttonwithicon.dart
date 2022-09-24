import 'package:flutter/material.dart';


class TextButtonWithIcon extends StatelessWidget {
  TextButtonWithIcon({this.btnIcon});
  Icon? btnIcon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Navigator.pop(context);
      },
      child: btnIcon!,
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 4.0,
      ),
    );
  }
}
