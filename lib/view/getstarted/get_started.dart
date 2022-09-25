import 'package:flutter/material.dart';


class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(child: Image(image: AssetImage('images/GroupSignIn.png'))),
              SizedBox(height: 16.0,),
              Text('Select to get started',
                style: TextStyle(
                  fontSize: 16.0
                ),
              ),
              Cards(image: 'taxidriver', titleText: 'Continue as Driver', paraText: 'Lorem ipsum dolor sit amet, consectetur\nNam dapibus ac libero id blandit.',),
              Cards(image: 'deliverycourier' , titleText: 'Continue Sender & Receiver' , paraText: 'Lorem ipsum dolor sit amet, consectetur\nNam dapibus ac libero id blandit.',),
              SizedBox(height: 100.0,)
            ],
          ),
        )
    );
  }
}

class Cards extends StatelessWidget {
  Cards({this.image , this.paraText , this.titleText});

  String? image;
  String? titleText;
  String? paraText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Card(
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Image(image: AssetImage('images/$image.png')),
              SizedBox(width: 10.0,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titleText.toString()),
                    Text(paraText.toString(),
                    style: TextStyle(
                      color: Color(0xFF9B9C9E),
                      fontSize: 11.0
                    ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
