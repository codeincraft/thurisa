import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'package:thurisa/models/product.dart';
import 'package:thurisa/widget/slidder.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.productsList,
  }) : super(key: key);
  final List<Products> productsList;

  //   List slide = [
  //   Slidder(),
  //   Slidder(),
  //   // CardDesign2(),
   
  // ];

  @override
  Widget build(BuildContext context) {
       double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return   SizedBox(
                height: screenHeight * 0.55,
                width: screenWidth * 0.80,
                child:  
                Swiper(
                    viewportFraction: 1,
                    // onIndexChanged: (value) {
                    //   this.indexNew;
                    // },
                itemCount: productsList.length,
                itemBuilder: (context, index) {
                  return Slidder(
                    produt: productsList[index],
                    
                  );
                 
                },
                pagination: SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: DotSwiperPaginationBuilder(
                    // activeSize: 20,
                    space: 3,
                    color: Colors.transparent,
                    activeColor: Colors.transparent,
                  ),
                ),
                // control: const SwiperControl(),
            ),
              );
  }
}
