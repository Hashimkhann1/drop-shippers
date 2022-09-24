import 'package:dropshiper/utils/colors.dart';
import 'package:dropshiper/widgets/textbuttonwithicon.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButtonWithIcon(btnIcon: Icon(Icons.arrow_back_ios, color: ColorsResource.colorOrange,),),
                Row(
                  children: [
                    Text('hashim khan'),

                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
