import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thurisa/widget/app_bar.dart';
import 'package:thurisa/widget/app_button.dart';
import 'package:thurisa/constants/app_color.dart' as color;
import 'package:thurisa/widget/app_text.dart';
import 'package:thurisa/screens/cart.dart';
import 'package:thurisa/widget/swiper_widget.dart';

class VeggieScreen extends StatefulWidget {
  const VeggieScreen({super.key});

  @override
  State<VeggieScreen> createState() => _VeggieScreenState();
}

class _VeggieScreenState extends State<VeggieScreen> {
   List slide = [
    Swipper(),
    Swipper(),
    Swipper(),
    Swipper(),
   
  ];
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:color.AppColor.appTertiaryColor1,
      appBar: ThurisaAppBar(
        onSideWidget1: () {
          Navigator.pop(context);
        },
        showActionIconRow: true,
        backgroundColor: Colors.transparent,
        leading1: Icon(Icons.arrow_back_ios_rounded),
        rowIcon3: Icon(Icons.favorite_border_outlined, 
        color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal:40, vertical: 20),
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.40,
                width: screenWidth,
                child: Swiper(
                      viewportFraction: 1,
                      // onIndexChanged: (value) {
                      //   this.indexNew;
                      // },
                  itemCount: slide.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child:  slide[index],
                    );
                   
                  },
                  pagination: SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                      activeSize: 10,
                      space: 3,
                      color: color.AppColor.appTertiaryColor1,
                      activeColor: color.AppColor.appPrimaryColor1,
                    ),
                  ),
                  // control: const SwiperControl(),
            ),
              ),
                FittedBox(child: AppContentText(text: 'Veggie tomato Mix', size: 25, fontWeight: FontWeight.w600,)),
                FittedBox(child: AppContentText(text: 'N1,900', size: 25, fontWeight: FontWeight.w600, color: color.AppColor.appPrimaryColor1,)),
                SizedBox(height: 15,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(child: AppContentText(text: 'Delivery Info', size: 18, fontWeight: FontWeight.w600,)),
                      FittedBox(child: AppContentText(text: 'Delivered between monday aug and\nthursday 20 from 8pm to 91:32pm', size: 13, )),
                      SizedBox(height: 15,),
                      FittedBox(child: AppContentText(text: 'Return Policy', size: 18, fontWeight: FontWeight.w600,)),
                      FittedBox(child: AppContentText(text: 'All our foods are double checked before\nleaving our stores so by any case you\nfound a broken food please contact our\nhotline immediately', size: 13)),
                      SizedBox(height: 20,),
                      AppButton(
                        buttonText: 'Add to cart',
                        height: 50,
                        borderRadius: 20,
                        width: screenWidth * 0.80,
                        buttonColor: color.AppColor.appPrimaryColor1,
                        textColor: Colors.white,
                        onTap: (){
                           Navigator.push(context,
                               PageTransition(
                                child: Cart(),
                                type: PageTransitionType.fade,
                               )
                               );
                        },
                        ),
                    ],
                  )),

              
            ],
          ),
        ),
      ),
    );
  }
}
