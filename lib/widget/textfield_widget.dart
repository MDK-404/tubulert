// textfield_widget.dart

import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget buildTextField(
      String labelText,
      TextEditingController controller,
      bool isPassword,
      bool isPasswordHidden,
      Function togglePasswordVisibility) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
          ),
        ),
        SizedBox(height: 5),
        TextField(
          controller: controller,
          obscureText: isPassword ? isPasswordHidden : false,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.pink),
              borderRadius: BorderRadius.circular(8),
            ),
            suffixIcon: isPassword
                ? GestureDetector(
                    onTap: () => togglePasswordVisibility(),
                    child: Icon(
                      isPasswordHidden
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  )
                : null,
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
