import 'package:dropshiper/view/auth/login.dart';
import 'package:dropshiper/widgets/login_signinBTN.dart';
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
                LoginLogOutBTN(btnTitle: 'CONTINUE TO SIGN UP',btnColor: Colors.white,borderColor: Colors.black, pressed: (){},),
                // LoginSigin(title: 'CONTINUE TO SING UP',),
                Text('OR',textAlign:TextAlign.center,style: TextStyle(color: Colors.black),),
                LoginSigin(title: 'Continue To Google', ImageName: 'googleIcon', onTap: () => print('google'),),
                LoginSigin(title: 'Continue To Facebook', ImageName: 'facebookIcon', onTap: () => print('facebook')),
                LoginSigin(title: 'Continue To Apple Id', ImageName: 'appleIcon', onTap: () => print('apple'))
              ],
            ),
          ),
        )
    );
  }
}
