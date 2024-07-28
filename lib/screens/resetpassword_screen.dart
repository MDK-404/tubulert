import 'package:flutter/material.dart';
import 'package:tubulert/widget/texts.dart';
import 'package:tubulert/widget/style.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _reenterPasswordController =
      TextEditingController();
  bool _passwordsMatch = true;

  void _validatePasswords() {
    setState(() {
      _passwordsMatch =
          _newPasswordController.text == _reenterPasswordController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        Texts.appName,
        style: Styles.appNameStyle,
      )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Reset Password',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Enter at least 8 characters with uppercase, lowercase and special characters.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _newPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Enter New Password',
                errorText: _passwordsMatch ? null : 'Passwords do not match',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: _passwordsMatch ? Colors.grey : Colors.red,
                  ),
                ),
              ),
              onChanged: (text) => _validatePasswords(),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _reenterPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Re-enter Password',
                errorText: _passwordsMatch ? null : 'Passwords do not match',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: _passwordsMatch ? Colors.grey : Colors.red,
                  ),
                ),
              ),
              onChanged: (text) => _validatePasswords(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed:
                  _passwordsMatch && _newPasswordController.text.isNotEmpty
                      ? () {
                          // Handle reset password logic here
                        }
                      : null,
              child: Text(
                'Reset',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink, // Background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
