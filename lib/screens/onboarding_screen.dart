import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thurisa/models/prodoct_repository.dart';
import 'package:thurisa/widget/app_button.dart';
import 'package:thurisa/constants/app_color.dart' as color;
import 'package:thurisa/widget/app_text.dart';
import 'package:thurisa/screens/home_main.dart';
import 'package:thurisa/screens/veggie_screen.dart'; 

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: color.AppColor.appPrimaryColor1,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Container(
            height: screenHeight,
            width: screenWidth,
            // padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(padding: EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: color.AppColor.appPrimaryColor2,
                    child: Image(image: AssetImage('assets/Group 3.png')),
                  ),),
                ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(padding: EdgeInsets.symmetric(horizontal:20),
                    child:AppContentText(text: 'Food for\nEveryone', fontWeight: FontWeight.bold, size: 45, color: color.AppColor.appPrimaryColor2,
                    hieght: 0.8,),),
                  ),
                  Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: screenHeight * 0.65,
                    child: Stack(
                    children:[ 
                      Positioned(
                        right: 0,
                        bottom: 50,
                        child: Container(
                        height: screenHeight * 0.42,
                        width: screenWidth * 0.53,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        // margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/ToyFaces_Tansparent_BG_29.png')
                                )
                                ),
                                    ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 20,
                        child: Container(
                        height: screenHeight * 0.65,
                        width: screenWidth * 0.72,
                        // padding: const EdgeInsets.symmetric(horizontal: 10),
                        // margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/ToyFaces_Tansparent_BG_49.png')
                                )
                                ),
                                    ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: screenHeight * 0.40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            // transform: GradientRotation(
                              
                            // ),
                              colors: [
                                color.AppColor.appPrimaryColor1,
                                color.AppColor.appPrimaryColor1,
                                Color.fromARGB(206, 255, 57, 2),
                                Color.fromARGB(2, 173, 17, 6),
                                Color.fromARGB(2, 173, 17, 6),
                                
                              ])
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: AppButton(
                            buttonText: 'Get Started',
                            textColor: color.AppColor.appPrimaryColor1,
                            height: 60,
                            width: screenWidth * 0.80,
                            buttonColor: color.AppColor.appPrimaryColor2,
                            borderRadius: 30,
                            onTap: () async {
                              // var response = await ProductRepository().products();
                              // print(response);
                              Navigator.push(context,
                               PageTransition(
                                child: HomeMain(),
                                type: PageTransitionType.fade,
                               )
                               );
                            },
                            ),
                        ),
                      ),
                    ]
                  ),
                  ),
                ),
              
                const SizedBox(
                  height: 20,
                ),
             
              ],
            ),
          ),
        ),
      ),
    );
  }
}
