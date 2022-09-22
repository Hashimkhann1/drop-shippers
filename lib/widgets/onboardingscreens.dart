import 'package:flutter/material.dart';
import 'package:dropshiper/widgets/drposhipperText.dart'; //file

class BoardingScreens extends StatelessWidget {
  BoardingScreens({this.boardingImage});

  String? boardingImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10.0),
      child: Column(
        children: <Widget>[
          DropshipperText(),
          SizedBox(height: 50.0,),
          Image(image: AssetImage('images/$boardingImage.png')),
          Text('TITLE',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24.0,
              color: Colors.grey
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 26.0 , left: 26.0,top: 6.0),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dapibus ac libero id blandit.'),
          ),
        ],
      ),
    );
  }
}