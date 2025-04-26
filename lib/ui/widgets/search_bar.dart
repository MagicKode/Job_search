import 'package:flutter/material.dart';

class SearchJobsBar extends StatelessWidget {
  const SearchJobsBar({super.key});

  // Константы для цветов
  static const Color backgroundColor = Color(0xFF0C0C0C);
  static const Color searchBarBgColor = Color(0xFF313234);
  static const Color searchIconTextColor = Color(0xFF9F9F9F);
  static const Color containerColor = Color(0xFF222325);
  static const Color textColor = Color(0xFFFFFFFF);

  // Константы для текста
  static const String searchHintText = "Должность, ключевые слова";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 40,
      decoration: BoxDecoration(
        color: searchBarBgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(Icons.search, color: searchIconTextColor),
            Container(
              height: 40,
              width: 280,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: searchHintText,
                    hintStyle: TextStyle(color: searchIconTextColor),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
