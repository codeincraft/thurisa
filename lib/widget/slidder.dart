import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import 'package:thurisa/constants/app_color.dart' as color;
import 'package:thurisa/models/product.dart';
import 'package:thurisa/widget/app_text.dart';

class Slidder extends StatelessWidget {
  const Slidder({
    Key? key,
    required this.produt,
  }) : super(key: key);
  final Products produt;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.50,
      width: screenWidth * 0.80,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(20),
              height: screenHeight * 0.45,
              width: screenWidth * 0.90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Spacer(),
                  SizedBox(
                    height: 10,
                  ),
                  Spacer(),
                  FittedBox(
                    child: AppContentText(
                      text: produt.category.name,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      size: 20,
                    ),
                  ),
                  // SizedBox(height: 10,),
                  FittedBox(
                    child: AppContentText(
                      text: produt.price.toString(),
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      size: 18,
                      color: color.AppColor.appPrimaryColor1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: screenHeight * 0.33,
              width: screenWidth * 0.60,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage('assets/Rectangle 49.png'),
                      fit: BoxFit.cover)
                      ),
                      // child: FancyShimmerImage(
                      //   imageUrl: produt.images.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
