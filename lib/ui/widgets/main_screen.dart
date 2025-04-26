import 'package:flutter/material.dart';
import 'package:job_search_frutter/ui/widgets/job_card.dart';
import 'package:job_search_frutter/ui/widgets/job_recommended_card.dart';
import 'package:job_search_frutter/ui/widgets/search_vacancies_button.dart';
import 'package:job_search_frutter/ui/widgets/search_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // Константы для цветов
  static const Color backgroundColor = Color(0xFF0C0C0C);
  static const Color searchBarBgColor = Color(0xFF313234);
  static const Color searchIconTextColor = Color(0xFF9F9F9F);
  static const Color containerColor = Color(0xFF222325);
  static const Color textColor = Color(0xFFFFFFFF);

  // Константы для текста
  static const String searchHintText = "Должность, ключевые слова";
  static const String vacancyText = "Вакансии для вас";
  static const String watchingCountText = "Сейчас просматривают 5 человек";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      body: ListView(
        children: [
          //Search bar
          Padding(
            padding: EdgeInsets.only(top: 10, left: 16, right: 70),
            child: SearchJobsBar(),
          ),

          // Horizontal Scroll View Recommendation block
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Container(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                separatorBuilder: (context, _) => SizedBox(width: 8),
                itemBuilder: (context, index) => JobRecommendedCard(),
              ),
            ),
          ),

          //хардкор-текст:  \
          Padding(
            padding: EdgeInsets.only(top: 36, left: 16),
            child: Text(
              vacancyText,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: textColor,
              ),
            ),
          ),

          // Vertical Scroll View Recommendation block
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: 233,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: 6,
                separatorBuilder: (context, _) => SizedBox(width: 16),
                itemBuilder: (context, index) => JobCard(),
              ),
            ),
          ),

          // ElevatedButton
          Padding(
            padding: const EdgeInsets.all(16),
            child: SearchVacanciesButton()
          ),
        ],
      ),
    );
  }
}
