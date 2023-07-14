import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHeadingText extends StatelessWidget {
  double size;
  final TextAlign? textAlign;
  final String text;
  final Color color;
  final fontFamily;
  final  fontWeight;
  final fontStyle;
  double? fontSize;
   AppHeadingText({super.key, 
  required this.text, 
  this.textAlign,
  this.fontSize,
  this.fontFamily,
  this.fontWeight,
   this.color = Colors.black,
  this.size = 30,
  this.fontStyle
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        height: 1,
        
        
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class AppContentText extends StatelessWidget {
  double size;
  double? hieght;
  final TextAlign? textAlign;
  final String text;
  final Color color;
  final  fontWeight;
  final TextStyle? textStyle;
  AppContentText({super.key, 
  required this.text, 
  this.textAlign,
   this.color = Colors.black,
  this.size = 14,
  this.hieght,
  this.fontWeight,
  this.textStyle
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        letterSpacing: 0,
        height:  hieght ?? 0,
        wordSpacing: 0,
        color: color ,
        fontSize: size,
        fontWeight: fontWeight,
        textStyle: textStyle,
        
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:google_fonts/google_fonts.dart';

class AppTitleText extends StatelessWidget {
  double size;
  final TextAlign? textAlign;
  final String text;
  final  fontWeight;
  final Color color;
   AppTitleText({super.key, 
  required this.text, 
  this.textAlign,
   this.color = Colors.black,
  this.size = 25,
  this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
        color: color,
        fontSize: size,
        fontWeight: fontWeight ?? FontWeight.bold ,
        
      ),
    );
  }
}