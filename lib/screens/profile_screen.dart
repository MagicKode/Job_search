import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // Константы для цветов
  static const Color backgroundColor = Color(0xFF0C0C0C);
  static const Color appBarColor = Color(0xFF0C0C0C);
  static const Color titleColor = Color(0xFF9F9F9F);

  // Константы для текста
  static const String appBarTitle = 'Заглушка';
  static const String imagePath = 'images/alert.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        titleTextStyle: TextStyle(color: titleColor),
        title: Text(appBarTitle),
      ),
      body: Center(
          child: Image.asset(imagePath)
      ),
    );
  }
}
