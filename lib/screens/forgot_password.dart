import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tubulert/screens/verification.dart';
import 'package:tubulert/widget/style.dart';
import 'package:tubulert/widget/texts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(Texts.appName, style: Styles.appNameStyle),
              const SizedBox(height: 50),
              Text(
                'Forgot Password',
                style: Styles.signupStyle,
              ),
              Text(
                'Entr your email to recieve code',
                style: GoogleFonts.openSans(
                    textStyle: const TextStyle(
                        color: Color(0xFFB70063), fontSize: 12)),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerificationScreen()));
                },
                child: Text(
                  'Send',
                  style: Styles.buttonStyle,
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: const Color(0xFFB70063),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
