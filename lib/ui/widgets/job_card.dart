import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  // final String countWatchingPeople;
  // final String jobTitle;
  // final String salary;
  // final String location;
  // final String companyName;
  // final String experience;
  // final String publishDate;

  const JobCard({
    super.key,
    // required this.countWatchingPeople,
    // required this.jobTitle,
    // required this.salary,
    // required this.location,
    // required this.companyName,
    // required this.experience,
    // required this.publishDate,
  });

  // Константы для цветов
  static const Color backgroundColor = Color(0xFF0C0C0C);
  static const Color containerColor = Color(0xFF222325);
  static const Color textColor = Color(0xFFFFFFFF);
  static const Color textColor1 = Color(0xFF4CB24E);
  static const Color textColor2 = Color(0xFF858688);

  // Константы для текста
  static const String countOfWatchingPeopleText =
      "Сейчас просматривает 5 человек";
  static const String vacancyText2 = "Поднять резюме в поиске";
  static const String vacancyText3 = "Поднять";
  static const String vacancyText4 = "Временная работа или подработка";
  static const String watchingCountText = "Сейчас просматривают 5 человек";
  static const String buttonText = "Откликнуться";

  @override
  Widget build(BuildContext context) {
    return Card(
      color: containerColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          //   Text(
          //     countWatchingPeople,
          //     style: TextStyle(
          //       fontSize: 14,
          //       fontWeight: FontWeight.w400,
          //       color: textColor1,
          //     ),
          //   ),
          //   Text(
          //     jobTitle,
          //     style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.w500,
          //       color: textColor,
          //     ),
          //   ),
          //   Text(
          //     salary,
          //     style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.w400,
          //       color: textColor,
          //     ),
          //   ),
          //   Text(
          //     location,
          //     style: TextStyle(
          //       fontSize: 14,
          //       fontWeight: FontWeight.w400,
          //       color: textColor,
          //     ),
          //   ),
          //   Text(
          //     companyName,
          //     style: TextStyle(
          //       fontSize: 14,
          //       fontWeight: FontWeight.w400,
          //       color: textColor,
          //     ),
          //   ),
          //   Text(
          //     publishDate,
          //     style: TextStyle(
          //       fontSize: 14,
          //       fontWeight: FontWeight.w400,
          //       color: textColor2,
          //     ),
          //   ),
          //
          //   // FloatingActionButton



          ],
        ),
      );
  }
}
