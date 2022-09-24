import 'package:flutter/material.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';

class ButtonWithImageAndText extends StatelessWidget {

  ButtonWithImageAndText({this.title, this.ImageName, this.onTap});

  String? title;
  String? ImageName;
  VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 13.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(color: Colors.black,width: 1.0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(image:  AssetImage('images/$ImageName.png')),
            Text(title.toString(),style: TextStyle(fontSize: 16.0),)
          ],
        )
      ),
    );
  }
}
