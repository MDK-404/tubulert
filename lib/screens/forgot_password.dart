import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
