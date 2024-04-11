import 'package:demoapp/components/Intro_1.dart';
import 'package:demoapp/components/intro_2.dart';
import 'package:demoapp/components/intro_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard extends StatelessWidget {
 
PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
             PageView(
              controller: _controller,
          children: [
            Intro_1(),
            Intro_2(),
            Intro_3(),
            
            
          ],
        ),
        Container(
          alignment: Alignment(0,0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children:
             [
              GestureDetector(
                child: Text("skip"),
                onTap: (){
                  _controller.jumpToPage(3);
                  
                },
                ),


              SmoothPageIndicator(controller: _controller, count: 3),
              GestureDetector(
                child: Text("Next"),
                onTap: () {
                  _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.easeIn);
                },
                ),
            ],
            

          )
          ),
        ],
        
        ),
        

    );
  }
}