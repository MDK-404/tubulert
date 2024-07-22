import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubulert/screens/onboarding_screen2.dart';

class OnBoardingone extends StatelessWidget {
  const OnBoardingone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB70063),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/onboarding1.png')),
            SizedBox(height: 30),
            Text(
              'Catch it Early\nTreat it Swiftly',
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
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OnBoardingTwo()));
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
      ),
    );
  }
}
