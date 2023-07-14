import'package:flutter/material.dart';
import 'package:thurisa/constants/app_color.dart' as color;
import 'package:thurisa/widget/app_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(10),
      height: screenHeight * 0.15,
      width: screenWidth * 0.90,
      decoration: BoxDecoration(
      color: Colors.white,

borderRadius: BorderRadius.circular(10) ),
      child: Row(
        children: [
          // Food Image
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.transparent,
            child: Image(image: AssetImage('assets/Mask Group-4.png')),
          ),
          SizedBox(
            height: screenHeight  * 0.12,
            width: screenWidth *0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                FittedBox(child: AppContentText(text: 'Veggie tomato mix', fontWeight: FontWeight.w600,),),
                Spacer(),
                Row(
                  children: [
                    FittedBox(
                      child: AppContentText(text: '#1,900', color: color.AppColor.appPrimaryColor1, fontWeight: FontWeight.w500,),
                    ),
                    Spacer(),
                    // + 1 -
                    Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 50,
                      padding: EdgeInsets.symmetric(horizontal: 10, 
                      // vertical:5 
                      ),
                     decoration: BoxDecoration(
                       color: color.AppColor.appPrimaryColor1,
                       borderRadius: BorderRadius.circular(10)
                     ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            AppContentText(text: '+', color: Colors.white,),
                            Spacer(),
                            AppContentText(text: '1', color: Colors.white,),
                            Spacer(),
                            AppContentText(text: '-', color: Colors.white,),
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
class CartItem2 extends StatelessWidget {
  const CartItem2({super.key});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(10),
      height: screenHeight * 0.15,
      width: screenWidth,
      decoration: BoxDecoration(
      color: Colors.white,

borderRadius: BorderRadius.circular(10)      ),
      child: Row(
        children: [
          // Food Image
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.transparent,
            child: Image(image: AssetImage('assets/Mask Group-5.png')),
          ),
          SizedBox(
            height: screenHeight  * 0.12,
            width: screenWidth *0.50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                FittedBox(child: AppContentText(text: 'Fishwith mix orange...', fontWeight: FontWeight.w600,),),
                Spacer(),
                Row(
                  children: [
                    FittedBox(
                      child: AppContentText(text: '#1,900', color: color.AppColor.appPrimaryColor1, fontWeight: FontWeight.w500,),
                    ),
                    Spacer(),
                    // + 1 -
                    Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 50,
                      padding: EdgeInsets.symmetric(horizontal: 10, 
                      // vertical:5 
                      ),
                     decoration: BoxDecoration(
                       color: color.AppColor.appPrimaryColor1,
                       borderRadius: BorderRadius.circular(10)
                     ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            AppContentText(text: '+', color: Colors.white,),
                            Spacer(),
                            AppContentText(text: '1', color: Colors.white,),
                            Spacer(),
                            AppContentText(text: '-', color: Colors.white,),
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          )
        ],
      ),
    );
  }
}