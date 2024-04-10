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
            SizedBox(height: 40,),
                // logo
              Icon(Icons.lock,
              size: 100,),
              SizedBox(height: 30,),

               //welcome back
                   Text(
                    "Welcome Back , dev !",
                    style:  TextStyle(color: Colors.black,
                    fontSize: 20),
                    
                  ),
                  SizedBox(height: 20,),
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
       SizedBox(height: 5,),
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
         SizedBox(height: 10,),
      //sign in
        MyButton(),
         SizedBox(height: 20,),
      // or continue 
        Text("Not a member,Register Now !")
      // google

      // not a member
          ],),
        ),
      ),


    );
  }
}