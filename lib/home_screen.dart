import 'package:e_commerce/on_boarding_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0C356A),
      body: Column(
        children: [
          OnBoardingScreenBody(),
          Container(
            width: 327,
            height: 58,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0XFFFBC236),
            ),
            child: Text('Get Started',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black
            ),),
          ),
          SizedBox(
            height: 25.0,
          )
        ],
      ),
    );
  }
}
