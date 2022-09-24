import 'package:dropshiper/widgets/text_field.dart';
import 'package:dropshiper/widgets/textbutton.dart';
import 'package:dropshiper/widgets/textbuttonwithicon.dart';
import 'package:flutter/material.dart';
import 'package:dropshiper/utils/colors.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButtonWithIcon(btnIcon: Icon(Icons.arrow_back_ios, color: ColorsResource.colorOrange,),),
                    SizedBox(height: 40.0,),
                    Text('Welcome Back!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.0,
                      ),),
                    SizedBox(height: 6.0,),
                    Text('Hello there, Login to continue',
                      style: TextStyle(
                          color: Color(0xFF707070)
                      ),),
                    SizedBox(height: 24.0),
                    TextFieldWidget(hintTexts: 'user@email.com', icons: Icon(Icons.email,color: Colors.lightBlueAccent,),),
                    SizedBox(height: 16.0,),
                    TextFieldWidget(hintTexts: 'Password', icons: Icon(Icons.key, color: Colors.orange,),),
                    SizedBox(height: 18.0,),
                    Container(
                      width: double.infinity,
                        child: LoginLogOutBTN(btnTitle: 'Login', btnColor: Color(0xFFFFC12C),pressed: (){}, borderColor: Colors.white,)),
                  ],
                ),
              ),
              Column(

                children: [
                  Container(
                    // height: 200.0,
                    child: Image(image: AssetImage('images/loginBottomIMG.png'),),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}


