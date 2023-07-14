import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:thurisa/constants/app_color.dart' as color;

class AppButton extends StatelessWidget {
  VoidCallback onTap;
  Color? buttonColor;
  double? borderRadius;
  Color? textColor;
  final String buttonText;
  double? size;
  Color? borderColor;
  Color? iconColor;
  double? height;
  double? width;
  double? fontsize;
  EdgeInsets?  padding;
  FontWeight? fontWeight = FontWeight.bold;
  final IconData? icon;
  final IconData? icon2;

  AppButton({
    Key? key,
    required this.onTap,
    this.buttonColor,
    this.borderRadius,
    this.textColor,
    required this.buttonText,
    this.size,
    this.borderColor,
    this.iconColor,
    this.height,
    this.width,
    this.fontsize,
    this.padding,
    this.fontWeight,
    this.icon,
    this.icon2,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all( 10),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor ?? Colors.white,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding:  padding,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon),
                  Text(buttonText,
                  style: GoogleFonts.lato(
                    color: textColor,
                    fontSize: fontsize,
                    fontWeight: fontWeight,
                  ),),
                  SizedBox(width: 10,),
                    Icon(icon2, color: iconColor,),
                ],
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}
