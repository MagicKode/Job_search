import 'package:flutter/material.dart';
import 'package:job_search_frutter/ui/widgets/profile_screen.dart';

import 'alerts_screen.dart';
import 'favorites_screen.dart';
import 'main_screen.dart';
import 'messages_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // Константы для цветов
  static const Color backgroundColor = Color(0xFF0C0C0C);
  static const Color selectedItemColor = Color(0xFF2B7EFE);
  static const Color unselectedItemColor = Color(0xFF9F9F9F);

  // Константы для текста
  static const String search = 'Поиск';
  static const String favorite = 'Избранное';
  static const String alerts = 'Отклики';
  static const String message = 'Сообщения';
  static const String person = 'Профиль';

  int myIndex = 0;

  List<Widget> widgetList = const [
    MainScreen(),
    FavoritesScreen(),
    AlertsScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: IndexedStack(index: myIndex, children: widgetList),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: search),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: favorite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_post_office_outlined),
            label: alerts,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: message,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: person,
          ),
        ],
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
      ),
    );
  }
}
