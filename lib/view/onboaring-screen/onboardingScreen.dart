import 'package:dropshiper/view/onboaring-screen/teremsCondition.dart';
import 'package:dropshiper/widgets/drposhipperText.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'; // smooth_page_indicator

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                    print(onLastPage);
                  });
                },
                children:[
                  BoardingScreens(boardingImage: 'onboarding1car'),
                  BoardingScreens(boardingImage: 'carLocation2ndOnboarding',),
                  BoardingScreens(boardingImage: 'DeliveryOnboiarding',),

                ],
              ),
              Container(
                  alignment: Alignment(0, 0.6),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: ExpandingDotsEffect(
                        spacing: 4.0,
                        dotColor: Color(0xFFEBEBEB),
                        activeDotColor: Colors.orange
                    ),
                  )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                      child: GestureDetector(
                        onTap: (){
                          onLastPage ? Navigator.push(context, MaterialPageRoute(builder: (context) => TermsCondation())) : _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 120.0 , vertical: 16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            color: Color(0xFFFFC027)
                          ),
                          child: Text('NEXT')
                        ),
                      ),
                  ),
                 onLastPage ? SizedBox(height: 20.0,) : SizedBox(height: 4.0,),
                 onLastPage ? SizedBox() :
                 Padding(
                   padding: const EdgeInsets.all(6.0),
                   child: GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => TermsCondation()));
                     },
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
                 )
                ],
              )
            ]
          )
        )
    );
  }
}

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
