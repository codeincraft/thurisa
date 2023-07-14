import'package:flutter/material.dart';
import 'package:thurisa/screens/veggie_screen.dart';
import 'package:thurisa/widget/app_bar.dart';
import 'package:thurisa/constants/app_color.dart' as color;
import 'package:thurisa/widget/app_text.dart';
import 'package:thurisa/screens/home_screen.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
   int index = 0;
 final screens = [
 HomeScreen(),
 VeggieScreen(),
 Center(child: AppContentText(text: 'Page 3')),
 Center(child: AppContentText(text: 'Page 4')),
 
 ];

  @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
    body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Color.fromARGB(10, 255, 51, 0),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold
            )
          )
        ),
        child: NavigationBar(
          backgroundColor: color.AppColor.appTertiaryColor1,
          height: 60,
          selectedIndex: index,
          onDestinationSelected: (index) {
            setState(() {
              this.index = index;
            });
          },
          animationDuration: Duration(seconds: 1),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color:color.AppColor.appPrimaryColor1,),
            label: ''
            ),
            NavigationDestination(
               selectedIcon: Icon(Icons.favorite, color:color.AppColor.appPrimaryColor1,),
              icon: Icon(Icons.favorite_border_outlined, ),
            label: ''),
            NavigationDestination(icon: Icon(Icons.person_outline_outlined),
             selectedIcon: Icon(Icons.person, color:color.AppColor.appPrimaryColor1,),
            label: ''),
            NavigationDestination(icon: Icon(Icons.access_time_sharp),
             selectedIcon: Icon(Icons.access_time_filled_rounded, color:color.AppColor.appPrimaryColor1,),
            label: ''),
            // BottomNavigationBarItem(icon: Icon(Icons.home),
            // label: 'Home'),
          ]
          ),
      ),
    );
  }
}