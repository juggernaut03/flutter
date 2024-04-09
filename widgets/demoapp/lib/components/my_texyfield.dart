import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscuretext;

  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscuretext,

  });

  @override
  Widget build(BuildContext context) {
    return   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controller,
                      obscureText: obscuretext,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: (BorderSide(color: Colors.black))
                        ),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        fillColor: Colors.grey[300],
                       hintText: hintText,
                      ),
                    ),
                  );
                  

  }
}