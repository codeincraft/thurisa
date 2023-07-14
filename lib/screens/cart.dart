import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:thurisa/widget/app_bar.dart';
import 'package:thurisa/widget/app_button.dart';
import 'package:thurisa/constants/app_color.dart' as color;
import 'package:thurisa/widget/app_text.dart';
import 'package:thurisa/widget/cart_item.dart';
import 'package:thurisa/widget/swiper_widget.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List carts = [
   CartItem(),
   CartItem2(),
   CartItem()
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: color.AppColor.appTertiaryColor1,
      backgroundColor: Color.fromARGB(255, 240, 239, 239),
      appBar: ThurisaAppBar(
        onSideWidget1: () {
          Navigator.pop(context);
        },
        titleWidget: AppContentText(text: 'Cart'),
        showActionIconRow: true,
        backgroundColor: Colors.transparent,
        leading1: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.swipe_sharp),
                  FittedBox(
                      child: AppContentText(
                    text: 'swipe on item to delete',
                    size: 10,
                  )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: screenHeight * 0.70,
                width: screenWidth,
                child: ListView.builder(
                  itemCount: carts.length,
                  itemBuilder: ((context, index) {
                    final cart = carts[index];
                    return Slidable(
                      child: Container(
                        padding: EdgeInsets.symmetric( vertical: 5, ),
                        child: carts[index],
                      ),
                      // Lefthand
                      startActionPane: ActionPane(
                        motion: StretchMotion(), 
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black,
                            child: Icon(Icons.g_mobiledata, size: 30,)),
                          SlidableAction(
                            onPressed: (context) {
                          },
                          backgroundColor: color.AppColor.appPrimaryColor1,
                          icon: Icons.delete_forever_outlined,
                          ),
                        
                        ]),
                        // Right hand side
                        endActionPane: ActionPane(
                        motion: StretchMotion(), 
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                          },
                          
                          // backgroundColor: color.AppColor.appPrimaryColor1,
                          icon: Icons.favorite_border,
                          ),
                          SlidableAction(
                            onPressed: (context) {
                          },
                          // backgroundColor: color.AppColor.appPrimaryColor1,
                          icon: Icons.circle,
                          ),
                        
                        ]),
                      );
                  })),
              ),
              Spacer(),
            
              AppButton(
                buttonText: 'Add to cart',
                height: 50,
                borderRadius: 20,
                width: screenWidth * 0.80,
                buttonColor: color.AppColor.appPrimaryColor1,
                textColor: Colors.white,
                onTap: () {},
              ),
                SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
