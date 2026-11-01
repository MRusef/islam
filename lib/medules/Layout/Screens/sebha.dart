import 'package:flutter/material.dart';
import 'package:islami/core/AppColors.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {

  int counter = 0;
  int azkarIndex = 0;

  final List<String> azkar = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
    'لا إله إلا الله',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Center(child: Image.asset('assets/Images/ssebha_bg.png',width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,)),
          Positioned(
            top: 10,right: 60,
              child: Image.asset('assets/logo/img_header.png', width: 300)),
          Positioned(
            top: 170,left: 58,
            child: Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى ',style: TextStyle(
              color: AppColors.white,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),),
          ),

          InkWell(
            onTap: () {
              setState(() {
                counter++;
                if (counter == 33) {
                  counter = 0;
                  azkarIndex = (azkarIndex + 1) % azkar.length;
                }
              });
            },
            child: Stack(
              children: [
              Positioned(
                  top: 270,left: 55,
                  child: Image.asset('assets/Images/SebhaBody 1.png',width: 300,height:400 ,)),
              Positioned(
                  top: 240,right:135,
                  child: Image.asset('assets/Images/Sebha head.png',width: 145,height:86 ,)),
                Positioned(
                  top: 400,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Text(
                        azkar[azkarIndex],
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '$counter',
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
            ],),
          )

    ],
      ),
    );
  }
}
