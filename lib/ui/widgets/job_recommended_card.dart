import 'package:flutter/material.dart';

class JobRecommendedCard extends StatelessWidget {
  const JobRecommendedCard({super.key});
  // Константы для цветов
  static const Color containerColor = Color(0xFF222325);
  static const Color textColor = Color(0xFFFFFFFF);
  static const Color avatarBgColor = Color(0xFF015905);
  static const Color textColor1 = Color(0xFF4CB24E);

  // Константы для текста
  static const String vacancyText1 = "Вакансии рядом с вами";
  static const String vacancyText2 = "Поднять резюме в поиске";
  static const String vacancyText3 = "Поднять";
  static const String vacancyText4 = "Временная работа или подработка";


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 132,
      decoration: BoxDecoration(color: containerColor, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          // Icon(Icons.stars_rounded, color: avatarBgColor),
          // Text(
          //   vacancyText1,
          //   style: TextStyle(
          //     fontSize: 14,
          //     fontWeight: FontWeight.w500,
          //     color: textColor,
          //   ),
          // ),
        ],
      ),
    );
  }
}
