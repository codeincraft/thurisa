// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:noshtrybe/constants/app_color.dart' as color;

class ThurisaTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  dynamic? keyboardType;
  final Widget?  suffixIcon;
  final suffix;
  final  onSaved;
  final validator;
  final String? initialValue;
  final  Widget? prefixIcon;
  final Color? fillColor;
  final String? errorText;
  final VoidCallback? onTap;

    ThurisaTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.suffix,
    this.onSaved,
    this.validator,
    this.initialValue,
    this.fillColor,
    this.errorText,
    this.onTap,
    
  });

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onTap: onTap,
      // onSaved: onSaved,
      // initialValue: initialValue,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      controller: controller,
      decoration:  InputDecoration(
        // contentPadding: EdgeInsets.all(5),
        // isCollapsed: true,
        isDense: true,
        errorText: errorText ,
        suffixIcon: suffixIcon,
        suffix: suffix,
        prefixIcon: prefixIcon,
        alignLabelWithHint: true,
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 236, 235, 235),
            ),
        ),
        focusedBorder:  OutlineInputBorder(
           borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color:  Color(0xff585656),
          ),   
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.lato(
          color: Colors.grey,
        // color: color.AppColor.textColor2
        ),
        fillColor:  fillColor ?? Colors.transparent),
        enabled: true,
    
    );
  }
}
