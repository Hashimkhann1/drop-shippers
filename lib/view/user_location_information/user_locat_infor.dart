import 'package:dropshiper/utils/colors.dart';
import 'package:dropshiper/view/getstarted/get_started.dart';
import 'package:dropshiper/widgets/textbutton.dart';
import 'package:flutter/material.dart';

class UserLocationInformation extends StatefulWidget {
  const UserLocationInformation({Key? key}) : super(key: key);

  @override
  State<UserLocationInformation> createState() => _UserLocationInformationState();
}

class _UserLocationInformationState extends State<UserLocationInformation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(child: Image(image: AssetImage('images/address.png'))),
                SizedBox(height: 16.0,),
                Text(
                  'Current Home Address',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500
                ),
                ),
                LocationButtons(images: 'worldBTN',),
                LocationButtons(images: 'mapBtn',),
                LocationButtons(images: 'architecture-and-cityBTN',),
                LocationButtons(images: 'homeBTN',),
                LoginLogOutBTN(btnColor: ColorsResource.colorOrange, btnTitle: 'CONTINUE',borderColor: ColorsResource.colorOrange, pressed: (){},),
                // LoginLogOutBTN(btnColor: ColorsResource.colorLightGray, btnTitle: 'SKIP',borderColor: ColorsResource.colorLightGray, pressed: (){},)
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GetStarted())),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Skipe',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0
                        ),),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

class LocationButtons extends StatelessWidget {
  LocationButtons({this.images});

  String? images;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.0),
        // border: Border.all(color),
        color: ColorsResource.colorLightGray
      ),
      child: Row(

        // mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          SizedBox(width: 18.0,),
          Image(image: AssetImage('images/$images.png')),
          SizedBox(width: 16.0,),
          Text('hashim khan',
            style: TextStyle(
              fontSize: 16.0
            ),
          ),
        ],
      ),
    );
  }
}
