import 'package:flutter/material.dart';
import 'package:demoapp/components/my_texyfield.dart';
import "package:demoapp/components/my_Button.dart";

class Login extends StatelessWidget {
   Login ({super.key});

    final usernameController = TextEditingController();
    final passController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
     
      body: SafeArea(
        
        child: Center(
          child: Column(children: [
            SizedBox(height: 50,),
                // logo
              Icon(Icons.lock,
              size: 100,),
              SizedBox(height: 50,),

               //welcome back
                   Text(
                    "Welcome Back , dev !",
                    style:  TextStyle(color: Colors.black,
                    fontSize: 20),
                    
                  ),
 SizedBox(height: 25,),
      //username
                 
      MyTextfield(
        controller: usernameController,
        obscuretext: false,
        hintText: "Username",

      ),
      //pass
      MyTextfield(
        controller: passController,
        obscuretext: false,
        hintText: "Password",
      ),
      //forgot pass
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            
            children: [
              Text("forgot password"),
            ],
          ),
        ),
      //sign in
MyButton(),
      // or continue 

      // google

      // not a member
          ],),
        ),
      ),


    );
  }
}