import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: const Color.fromRGBO(0, 0, 0, 1),
      borderRadius: BorderRadius.circular(10)),
     child: Center(child: Text("Sign in", style: TextStyle(color: Colors.white),),
     
     ),
    );
  }
}