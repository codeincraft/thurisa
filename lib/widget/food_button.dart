import 'package:flutter/material.dart';
import 'package:thurisa/widget/app_text.dart';

class FoodButton extends StatelessWidget {
  String text;
  final Color textColor;
  final Color backgroundColor;
  double width;
  double height;
  final Color? borderColor;

   FoodButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.width,
    required this.height,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        // color: backgroundColor,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
      ),
      child: Column(
        children: [
          Center(
            child: FittedBox(
              child: AppContentText(text: text, color: textColor,
              // fontWeight: FontWeight.w600,
              size: 15,),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              height: 5,
              width: width,
              color: backgroundColor,
            )
          ),
        ],
      ),
      
    );
  }
}