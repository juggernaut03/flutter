import 'package:demoapp/components/dialog.dart';
import 'package:demoapp/components/my_list.dart';
import 'package:demoapp/pages/Onboarding.dart';
import 'package:demoapp/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      home: Onboard(),
      
    );
  }
}
