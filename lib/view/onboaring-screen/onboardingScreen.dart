import 'package:dropshiper/view/onboaring-screen/teremsCondition.dart'; //file
import 'package:dropshiper/widgets/onboardingscreens.dart'; //file
import 'package:flutter/material.dart'; //material package
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
                    count: 3,
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