import 'package:dropshiper/utils/colors.dart';
import 'package:dropshiper/widgets/textbutton.dart';
import 'package:flutter/material.dart';


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
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFFFFBB17),
                      ),
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
                      TextFielWidget(hintTexts: 'user@email.com', icons: Icon(Icons.email,color: Colors.lightBlueAccent,),),
                      SizedBox(height: 16.0,),
                      TextFielWidget(hintTexts: 'Password', icons: Icon(Icons.key, color: Colors.orange,),),
                      SizedBox(height: 18.0,),
                      Container(
                        width: double.infinity,
                          child: LoginLogOutBTN(btnTitle: 'Login', btnColor: Color(0xFFFFC12C),pressed: (){}, borderColor: Colors.white,)),
                    ],
                  ),
                ),
                Align(
                  // height: 200.0,
                  alignment: Alignment.bottomCenter,
                  child: Image(image: AssetImage('images/loginBottomIMG.png'),),
                ),
                Container(
                  height: 200.0,
                  color: ColorsTest.color,
                )
              ],
            ),
          ),
        )
    );
  }
}

class TextFielWidget extends StatelessWidget {

  TextFielWidget({this.hintTexts , this.icons});

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
