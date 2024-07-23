import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubulert/screens/signup.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB70063),
      body: PageView(
        children: [
          OnBoardingPage(
            image: 'assets/images/onboarding1.png',
            text: 'Catch it Early\nTreat it Swiftly',
            pageIndex: 0,
          ),
          OnBoardingPage(
            image: 'assets/images/onboarding2.png',
            text: 'Spot the Signs\nStop the Spread',
            pageIndex: 1,
          ),
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String text;
  final int pageIndex;

  const OnBoardingPage({
    required this.image,
    required this.text,
    required this.pageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(image)),
          SizedBox(height: 30),
          Text(
            text,
            style: GoogleFonts.jost(
              textStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 140),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: pageIndex == 0 ? Colors.white : Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: pageIndex == 1 ? Colors.white : Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          TextButton(
              onPressed: () {
                if (pageIndex == 1) {
                  // Navigate to the Login Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                } else {
                  // Navigate to the next page in the PageView
                  PageController _pageController = PageController();
                  _pageController.animateToPage(1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                }
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFB70063), // Button color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.white)),
              ),
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}
