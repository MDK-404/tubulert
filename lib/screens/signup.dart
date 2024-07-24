import 'package:flutter/material.dart';

import 'package:tubulert/screens/login.dart';
import 'package:tubulert/widget/style.dart';
import 'package:tubulert/widget/texts.dart';
import 'package:tubulert/widget/textfield_widget.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // Define TextEditingControllers
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordHidden = true;

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void togglePasswordVisibility() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(Texts.appName, style: Styles.appNameStyle),
                const SizedBox(height: 20),
                Text(
                  Texts.createAccount,
                  style: Styles.signupStyle,
                ),
                const SizedBox(height: 20),
                CustomWidgets.buildTextField(
                  'First Name',
                  _firstNameController,
                  false,
                  _isPasswordHidden,
                  togglePasswordVisibility,
                ),
                CustomWidgets.buildTextField(
                  'Last Name',
                  _lastNameController,
                  false,
                  _isPasswordHidden,
                  togglePasswordVisibility,
                ),
                CustomWidgets.buildTextField(
                  'Your Email Address*',
                  _emailController,
                  false,
                  _isPasswordHidden,
                  togglePasswordVisibility,
                ),
                CustomWidgets.buildTextField(
                  'Your Password',
                  _passwordController,
                  true,
                  _isPasswordHidden,
                  togglePasswordVisibility,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Sign Up',
                    style: Styles.buttonStyle,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    backgroundColor: const Color(0xFFB70063),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: Text(
                    'Already have an Account',
                    style: Styles.signupPage,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
