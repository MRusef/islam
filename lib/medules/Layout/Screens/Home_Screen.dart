import 'package:flutter/material.dart';
import 'package:islami/core/AppColors.dart';
import 'package:islami/core/AppData/AppData.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Images/Background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset("assets/logo/img_header.png", width: 300),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    'assets/Icons/ic_quran.png',
                    color: AppColors.gold,
                  ),
                  hintText: "Sura Name",
                  hintStyle: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.gold),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.gold),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.gold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsetsGeometry.all(16),
                separatorBuilder: (context, index) {
                  return Divider(indent: 60, endIndent: 60);
                },
                itemCount: 114,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Stack(
                        alignment: AlignmentGeometry.center,
                        children: [
                          Image.asset(
                            'assets/logo/img_sur_number_frame.png',
                            width: 52,
                          ),
                          Text(
                            (index + 1).toString(),
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 12),
                      Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppData.nameEn[index],
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "${AppData.verses[index]}Verses",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        AppData.nameAr[index],
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
