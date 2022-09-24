import 'package:dropshiper/view/auth/login.dart';
import 'package:dropshiper/view/auth/singn_up.dart';
import 'package:dropshiper/view/user_location_information/user_locat_infor.dart';
import 'package:dropshiper/widgets/button_with_Image_and_text.dart';
import 'package:dropshiper/widgets/textbutton.dart';
import 'package:flutter/material.dart';


class SignInWithSocial extends StatefulWidget {
  const SignInWithSocial({Key? key}) : super(key: key);

  @override
  State<SignInWithSocial> createState() => _SignInWithSocialState();
}

class _SignInWithSocialState extends State<SignInWithSocial> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 34.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image(image: AssetImage('images/GroupSignIn.png')),
                Text('Let\'s get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0
                  ),
                ),
                LoginLogOutBTN(btnTitle: 'CONTINUE TO LOGIN',btnColor: Color(0xFFFFCE5A),borderColor: Colors.white,pressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),),
                LoginLogOutBTN(btnTitle: 'CONTINUE TO SIGN UP',btnColor: Colors.white,borderColor: Colors.black, pressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => UserLocationInformation()));},),
                // LoginSigin(title: 'CONTINUE TO SING UP',),
                Text('OR',textAlign:TextAlign.center,style: TextStyle(color: Colors.black),),
                ButtonWithImageAndText(title: 'Continue To Google', ImageName: 'googleIcon', onTap: () => print('google'),),
                ButtonWithImageAndText(title: 'Continue To Facebook', ImageName: 'facebookIcon', onTap: () => print('facebook')),
                ButtonWithImageAndText(title: 'Continue To Apple Id', ImageName: 'appleIcon', onTap: () => print('apple'))
              ],
            ),
          ),
        )
    );
  }
}
