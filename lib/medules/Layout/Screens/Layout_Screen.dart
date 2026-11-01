import 'package:flutter/material.dart';
import 'package:islami/core/AppColors.dart';
import 'package:islami/medules/Layout/Screens/Home_Screen.dart';
import 'package:islami/medules/Layout/Screens/hadith.dart';
import 'package:islami/medules/Layout/Screens/radio.dart';
import 'package:islami/medules/Layout/Screens/sebha.dart';
import 'package:islami/medules/Layout/Screens/time.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {

  int index =0;
  List<Widget> screens =[HomeScreen(),Hadith(),Sebha(),Radio_Screen(),Time()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      backgroundColor: AppColors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,  //! logic of moving icons in BottomNavigationBarItem
        onTap: (value) {
          index = value;
          setState(() {});
        },

        type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.gold,
          selectedItemColor: AppColors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
            btnNavBar('Quran', 'assets/Icons/ic_quran.png'),
            btnNavBar('hadith', 'assets/Icons/book-album-svgrepo-com 1.png'),
            btnNavBar('Sebha', 'assets/Icons/necklace-islam-svgrepo-com 1.png'),
            btnNavBar('Radio', 'assets/Icons/radio-svgrepo-com 1.png'),
            btnNavBar('Time', 'assets/Icons/Vector.png'),
      ]),
    );
  }
}
BottomNavigationBarItem btnNavBar (String label,String icon){
  return BottomNavigationBarItem(icon: Image.asset(icon),label: label,
      activeIcon:
      Container(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 12,vertical: 6),
        decoration:BoxDecoration(
          color: AppColors.black.withValues(alpha: 0.6),
          borderRadius: BorderRadiusGeometry.circular(24),
        ) ,
        child: Image.asset('assets/Icons/ic_quran.png',color: AppColors.white,),
      ));
}