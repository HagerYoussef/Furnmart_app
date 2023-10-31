import 'package:e_commerce/on_boarding_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreenBody extends StatelessWidget {
  PageController _controller =PageController();


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: data.length,
          itemBuilder: (context,index){
        return Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 81,top: 137),
              width: 350,
                height: 430,
                child: Image.asset(data[index].imagepath),),
            SizedBox(
              height: 25,
            ),
            Text(data[index].title,style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(
              height: 10,
            ),
            Text('Get new furniture bought within an ',style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),),
            Text('simple steps that works best for you',style: TextStyle(
                fontSize: 18,
                color: Colors.white
            ),),
            SizedBox(
              height: 200,
            ),
            SmoothPageIndicator(
                controller: _controller,
                count: 3,
              effect: ScrollingDotsEffect(
                activeDotColor: Color(0XFFFBC236),
                dotWidth: 10,
                dotHeight: 10
              ),
            ),
          ],
        );
      }),
    );
  }
}
