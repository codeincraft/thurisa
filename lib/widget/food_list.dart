import 'package:flutter/material.dart';
import 'package:thurisa/constants/app_color.dart' as color;
import 'package:thurisa/widget/app_text.dart';
import 'package:thurisa/widget/food_button.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
   List<String> listOfTimeBelt = [
'Food',
'Drinks',
'Snacks',
'Sauce',


];

  // int gottenStars = 4;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.10,
      // alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
        // SizedBox(height: 10,),
          // Spacer(),
           FittedBox(
             child: Wrap(
              alignment: WrapAlignment.center,
              children: List.generate( 4, (index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: FoodButton(
                      textColor: selectedIndex==index ? color.AppColor.appPrimaryColor1 : color.AppColor.appTextColor1, 
                      backgroundColor: selectedIndex==index ? color.AppColor.appPrimaryColor1 : Colors.transparent,  
                      width: screenWidth/4.9, 
                      height: screenHeight * 0.10,
                       text: listOfTimeBelt[index],),
                  );
                }),
             ),
           ),
        ],
      ),
    );
  }
}