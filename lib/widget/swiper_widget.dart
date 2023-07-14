import'package:flutter/material.dart';
import 'package:thurisa/constants/app_color.dart' as color;
class Swipper extends StatelessWidget {
  const Swipper({super.key});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      // height: screenHeight * 0.10,
      // width: screenWidth,
      child: Column(
        children: [
          CircleAvatar(
            radius: 132,
            // minRadius: 90,
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/Mask Group-4.png'))
              ),
              // child: Image(
              //   fit: BoxFit.fill,
              //    image: AssetImage('assets/Mask Group-4.png'),),
            )
            
          ),
          
        ],
      ),
    );
  }
}