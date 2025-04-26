import 'package:flutter/material.dart';

class SearchVacanciesButton extends StatelessWidget {
  const SearchVacanciesButton({super.key});

  // Константы для цветов
  static const Color textColor = Color(0xFFFFFFFF);
  static const Color floatBtnColor = Color(0xFF2B7EFE);

  // Константы для текста
  static const String floatBtnText = "Ещё 143 вакансии";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: floatBtnColor,
        ),
        onPressed: () {},
        child: Text(floatBtnText, style: TextStyle(color: textColor)),
      ),
    );
  }
}
