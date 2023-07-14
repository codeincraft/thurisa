import 'package:flutter/material.dart';

import 'package:thurisa/constants/app_color.dart' as color;

class ThurisaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? backgroundColor;
  final Color? widgetColor;
  final Widget? sideTitle;
  final Widget? sideIcon;
  final Widget? rowIcon1;
  final Widget? rowIcon2;
  final Widget? rowIcon3;
  final Widget? leading;
  final Widget? leading1;
  final Widget? leading2;
  final Widget? titleWidget;
  final bool showActionIcon;
  final bool showActionIconRow;
  final bool showActionBar;
  final VoidCallback? onMenuActionTap;
  final VoidCallback? onSideWidget1;
  final VoidCallback? onSideWidget2;
  final VoidCallback? onRowWidget;
  const ThurisaAppBar({
    Key? key,
    this.backgroundColor,
    this.widgetColor,
    this.title = '',
    this.sideTitle,
    this.sideIcon,
    this.rowIcon1,
    this.rowIcon2,
    this.rowIcon3,
    this.leading,
    this.leading1,
    this.leading2,
    this.titleWidget,
    this.showActionIcon = false,
    this.showActionIconRow = false,
    this.showActionBar = false,
    this.onMenuActionTap,
    this.onSideWidget1,
    this.onSideWidget2,
    this.onRowWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
          decoration: BoxDecoration(
            color: backgroundColor ??  Colors.transparent ,
            ),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          // vertical: 40 ,
        ),
        child: Stack(children: [
          Positioned.fill(
              child: titleWidget == null
                  ? Center(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black ?? widgetColor,
                        ),
                      ),
                    )
                  : Center(
                      child: titleWidget!,
                    )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leading ??
                  Transform.translate(
                    offset: const Offset(-14, 0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: onSideWidget1,
                          child: SizedBox(child: leading1,)),
                        SizedBox(width: 15,),
                            SizedBox(child: leading2,),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
              if (showActionIcon)
                Transform.translate(
                  offset: Offset(10, 0),
                  child: InkWell(
                    onTap: onSideWidget1,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: sideIcon 
                      // ?? Icon(Icons.notifications_active_outlined),
                    ),
                  ),
                ),
                if(showActionBar)
                Transform.translate(offset: Offset(10,0),
                child: InkWell(
                  onTap: onSideWidget2,
                  child: Padding(padding: const EdgeInsets.only(bottom: 0, right:10, left: 0, ),
                  child: sideTitle,
                  ),
                ),
                ),
                 if(showActionIconRow)
                Transform.translate(offset: Offset(10,0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: onSideWidget2,
                      child: Padding(padding: const EdgeInsets.only(bottom: 0, right:10, left: 0, ),
                      child: rowIcon1,
                      ),
                    ),
                    InkWell(
                      onTap: onSideWidget2,
                      child: Padding(padding: const EdgeInsets.only(bottom: 0, right:10, left: 0, ),
                      child: rowIcon2,
                      ),
                    ),
                    InkWell(
                      onTap: onSideWidget2,
                      child: Padding(padding: const EdgeInsets.only(bottom: 0, right:10, left: 0, ),
                      child: rowIcon3,
                      ),
                    ),
                  ],
                ),
                ),
            ],
          )
        ]),
      )),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 50);
}

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BackArrowIcon extends StatelessWidget {
   
  VoidCallback onTap;
  Color? buttonColor;
  double? borderRadius;
  double? size;
  Color? borderColor;
  double? height;
  double? width;
  Color? backgroundColor;
  dynamic  image;


  BackArrowIcon({
    Key? key,
    required this.onTap,
    this.buttonColor,
    this.borderRadius,
    this.size,
    this.borderColor,
    this.height,
    this.width,
     this.backgroundColor,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.symmetric(horizontal: 25),
        // padding: EdgeInsets.all(),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor ?? Colors.transparent),
            borderRadius: BorderRadius.circular(50)
        ),
        child: 
        Icon(Icons.arrow_back),
          
        // Image(
        //   image: AssetImage('assets/MaskGroup16.png')),
      ),
    );
  }
}
