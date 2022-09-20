import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:dropshiper/view/home/Home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(56,58,62,0.94),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage('images/splashScreenIMG.png'),
            ),
          ),
          SpinKitSpinningLines(
              color: Colors.white,
            size: 60.0,
          )
        ],
      ),
    );;
  }
}
