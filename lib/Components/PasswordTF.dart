import 'package:flutter/material.dart';

class PasswordTF extends StatefulWidget {

  final TextEditingController controller;
  final String hintText;
  const PasswordTF({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<PasswordTF> createState() => _PasswordTFState();
}

class _PasswordTFState extends State<PasswordTF> {

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: widget.controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
          suffixIcon: IconButton(
            icon: Icon(
              
                obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            )
          ),
        ),
      );
    
  }
}