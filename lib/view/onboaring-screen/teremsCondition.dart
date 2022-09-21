import 'package:dropshiper/widgets/drposhipperText.dart';
import 'package:flutter/material.dart';


class TermsCondation extends StatefulWidget {
  const TermsCondation({Key? key});

  @override
  State<TermsCondation> createState() => _TermsCondationState();
}

class _TermsCondationState extends State<TermsCondation> {

  late bool? agree = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // SizedBox(height: 10,),
                DropshipperText(),
                // SizedBox(height: 60.0,),
                Image(image: AssetImage('images/termsAndConditionsMainIMG.png'),),
                Text('STANDARD TERMS OF AGREEMENT',),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  child: Text('I WE OF DROPSHIP ARE NOT RESPONSIBLE FOR THE FOLLOWING BUT NOT LIMITED TO THE CONDITION, SPEED, THEFT OR SECURITY OF PARCELS/PACKAGE IN TRANSIT. Nor are we of DROPSHIP  responsible for the LIFTING, MOVING OR CARRYING of PACKAGES OR PARCELS.',
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Checkbox(
                          value: agree,
                          checkColor: Colors.white,
                          activeColor: Colors.black,
                          onChanged: (value){
                            setState(() {
                              print(agree);
                              agree = value;
                              print(agree);
                            });
                          }),
                    ),
                    Text('I agree with these Terms of agreement')
                  ],
                ),
                GestureDetector(
                  onTap: (){
                  //  add any properity
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Color(0xFFFFC028),
                    ),
                      child: Text('GET STARTED',style: TextStyle(color: Colors.white),)
                  ),
                ),
                SizedBox(height: 10.0,)
              ],
            ),
          ),
        )
    );
  }
}
