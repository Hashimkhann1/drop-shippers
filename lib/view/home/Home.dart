import 'package:dropshiper/view/onboaring-screen/onboardingScreen.dart';
import 'package:dropshiper/widgets/drposhipperText.dart';
import 'package:dropshiper/widgets/screenOneButton.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: DropshipperText()
                  ),
                  Image(image: AssetImage('images/screenOneMainIMG.png')),
                  Text('Select Language to continue',
                    style: TextStyle(
                        fontSize: 20.0,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  ScreenOneBtn(title: 'English', btnColor: Color(0xFF383A3E), textColor: Colors.white, imageName: 'united-kingdom',),
                  ScreenOneBtn(title: 'SPANISH', btnColor: Color(0xFFFFFF), textColor: Colors.black, imageName: 'SPBtn',),
                  ScreenOneBtn(title: 'CHINESE', btnColor: Color(0xFFFFFF), textColor: Colors.black, imageName: 'CHBtn',),
                  ScreenOneBtn(title: 'JAPANESE', btnColor: Color(0xFFFFFF), textColor: Colors.black, imageName: 'JPBtn',),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.yellow
                          ),
                            onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
                            }, child: Text('CONTINUE WITH'
                        )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
        ),
      ),
    );
  }
}


