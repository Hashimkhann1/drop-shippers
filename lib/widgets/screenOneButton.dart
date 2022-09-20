import 'package:flutter/material.dart';


class ScreenOneBtn extends StatelessWidget {
  ScreenOneBtn({this.title , this.btnColor , this.textColor, this.imageName});

  String? title;
  Color? btnColor;
  Color? textColor;
  String? imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0 , left: 20.0, top: 20.0),
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              border: Border.all(),
              color: btnColor
          ),
          padding: EdgeInsets.only(top: 4.0 , bottom: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage('images/$imageName.png'),height: 40.0,),
              Padding(
                padding: const EdgeInsets.only(right: 88.0),
                child: Text(title.toString(),style: TextStyle(color: textColor,fontSize: 16.0),),
              )
            ],
          ),
        ),
      ),
    );
  }
}