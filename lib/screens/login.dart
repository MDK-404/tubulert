import 'package:flutter/material.dart';
import 'package:tubulert/screens/forgot_password.dart';
import 'package:tubulert/screens/signup.dart';
import 'package:tubulert/widget/style.dart';
import 'package:tubulert/widget/textfield_widget.dart';
import 'package:tubulert/widget/texts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(Texts.appName, style: Styles.appNameStyle),
              const SizedBox(height: 50),
              Text(
                'Login',
                style: Styles.signupStyle,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                labelText: 'Your Email Address',
                controller: _emailController,
                isPassword: false,
              ),
              CustomTextField(
                labelText: 'Your Password',
                controller: _passwordController,
                isPassword: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPassword(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password',
                    style: Styles.signupPage,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Login',
                  style: Styles.buttonStyle,
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: const Color(0xFFB70063),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text(
                  'Create an Account',
                  style: Styles.signupPage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
