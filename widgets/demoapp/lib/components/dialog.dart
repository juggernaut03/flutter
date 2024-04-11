import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
      child: ElevatedButton(child:  Text("this is dialog"), onPressed:()
      {
          showDialog(context: context, builder: ((context) => const AboutDialog(
            applicationIcon: FlutterLogo(),
            applicationLegalese: "gaurav",
            applicationName: "DemoApp",
            applicationVersion: "version 1.0.0.0",
            children: [
              Text("This is about Dialog Box")
            ],
          )));
      },),
    ),),
    );
  }
}