import 'package:flutter/material.dart';


class TextFieldWidget extends StatelessWidget {

  TextFieldWidget({this.hintTexts , this.icons});

  String? hintTexts;
  Icon? icons;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFF2F2F2),
        hintText: hintTexts,
        prefixIcon: icons,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(28.0)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(28.0)
        ),
      ),
    );
  }
}