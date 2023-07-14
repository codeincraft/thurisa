import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:thurisa/models/product.dart';
import 'package:thurisa/widget/app_bar.dart';
import 'package:thurisa/widget/app_text.dart';
import 'package:thurisa/widget/app_textField.dart';
import 'package:thurisa/constants/app_color.dart' as color;
import 'package:thurisa/widget/food_list.dart';
import 'package:thurisa/widget/product_widget.dart';
import 'package:thurisa/widget/slidder.dart';
import 'package:thurisa/models/prodoct_repository.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textFieldController = TextEditingController();

  //   List slide = [
  //   Slidder(),
  //   Slidder(),
  //   // CardDesign2(),
   
  // ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: color.AppColor.appTertiaryColor1,
        appBar: ThurisaAppBar(
          backgroundColor: Colors.transparent,
          leading1: Icon(Icons.menu),
          onSideWidget1: () {},
          showActionIconRow: true,
          rowIcon3: Icon(Icons.shopping_cart_outlined),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            height: screenHeight,
            width: screenWidth,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Delicious Food
              FittedBox(
                child: AppContentText(
                  hieght: 0.98,
                  text: 'Delicious\nfood for you',
                  size: 35,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Search
              ThurisaTextField(
                  controller: _textFieldController,
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                  ),
                  obscureText: false),

              SizedBox(
                height: 10,
              ),
              // Food category widget
              SizedBox(
                height: screenHeight * 0.10,
                width: screenWidth,
                child: FoodList(),
              ),
              // See more
              SizedBox(
                height: 20,
                width: screenHeight,
                child: Row(
                  children: [
                    Spacer(),
                    FittedBox(
                      child: AppContentText(
                        text: 'see more',
                        color: color.AppColor.appPrimaryColor1,
                        fontWeight: FontWeight.w600,
                        size: 16,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
                FutureBuilder<List<Products>>(
                            future: ProductRepository().products(),
                            builder: ((context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (snapshot.hasError) {
                                return Center(
                                  child: AppContentText(
                                      text:
                                          'An error occured ${snapshot.error}'),
                                );
                              } else {
                                if (snapshot.data!.isEmpty) {
                                  print('Is empty o');
                                  return Center(
                                    child: AppContentText(
                                        text:
                                            'No Restaurants has been added yet'),
                                  );
                                }
          
                                print('Data returned');
                                return ProductWidget(
                                  productsList: snapshot.data!,
                                );
                              }
                            })),
            ]),
          ),
        ),
      ),
    );
  }
}
