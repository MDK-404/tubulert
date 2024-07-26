import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timer_count_down/timer_count_down.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VerificationScreen(),
    );
  }
}

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController textEditingController = TextEditingController();
  bool isTimerCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tubulert',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Verification Code',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),
              Text(
                'Has been sent to asad@gmail.com',
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  controller: textEditingController,
                  onChanged: (value) {},
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    activeColor: Colors.pink,
                    selectedColor: Colors.pink,
                    inactiveColor: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 24),
              if (!isTimerCompleted)
                Countdown(
                  seconds: 60,
                  build: (BuildContext context, double time) => Text(
                    'Resend code in 00:${time.toInt()}',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  interval: Duration(seconds: 1),
                  onFinished: () {
                    setState(() {
                      isTimerCompleted = true;
                    });
                  },
                ),
              if (isTimerCompleted)
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend code',
                    style: GoogleFonts.lato(
                      fontSize: 14,
                      color: Colors.pink,
                    ),
                  ),
                ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Verification code check logic yahan add karain
                },
                child: Text('Verify',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.white))),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
