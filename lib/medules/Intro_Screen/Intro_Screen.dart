import 'package:flutter/material.dart';
import 'package:islami/core/AppColors.dart';
import 'package:islami/core/Intro_data/Intro_Data.dart';
import 'package:islami/medules/Layout/Screens/Layout_Screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int index_ = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/Intro Assets/img_header.png',
              width: 291,
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: IntroData.introImages.length,
              onPageChanged: (value) {
                setState(() {
                  index_ = value;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(IntroData.introImages[index], width: 300, height: 300,),
                    SizedBox(height: 5,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        textAlign: TextAlign.center,
                        IntroData.introText[index],
                        style:  TextStyle(
                          color: AppColors.gold,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child:  Text(0==index? '':'Back',style:  TextStyle(
                            color: AppColors.gold,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                              children:List.generate(5,
                                  (index) =>Container(
                                    padding: EdgeInsetsGeometry.symmetric(horizontal: 3),
                                    margin:  EdgeInsets.symmetric(
                                      horizontal: 3,
                                    ),
                                    height: 16,
                                    width: index_ == index ? 10 : 6,
                                    decoration: BoxDecoration(
                                      color: index_==index? AppColors.gold : Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                  ) ,
                            )
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            4==index ? Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LayoutScreen(),)):Text('Finish');
                          },
                          child:  Text( 4 ==index?'Finish': 'Next',style:  TextStyle(
                            color: AppColors.gold,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
