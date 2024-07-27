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

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
                CustomTextField(
                  labelText: 'First Name',
                  controller: _firstNameController,
                  isPassword: false,
                ),
                CustomTextField(
                  labelText: 'Last Name',
                  controller: _lastNameController,
                  isPassword: false,
                ),
                CustomTextField(
                  labelText: 'Your Email Address*',
                  controller: _emailController,
                  isPassword: false,
                ),
                CustomTextField(
                  labelText: 'Your Password',
                  controller: _passwordController,
                  isPassword: true,
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
