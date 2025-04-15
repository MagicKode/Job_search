import 'package:flutter/material.dart';
import 'package:job_search_frutter/screens/alerts_screen.dart';
import 'package:job_search_frutter/screens/favorites_screen.dart';
import 'package:job_search_frutter/screens/main_screen.dart';
import 'package:job_search_frutter/screens/messages_screen.dart';
import 'package:job_search_frutter/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      backgroundColor: Color(0xFF0C0C0C),
      body: IndexedStack(index: myIndex, children: widgetList),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF0C0C0C),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Поиск'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_post_office_outlined),
            label: 'Отклики',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Сообщения',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Профиль',
          ),
        ],
        selectedItemColor: Color(0xFF2B7EFE),
        unselectedItemColor: Color(0xFF9F9F9F),
        // backgroundColor: Color(0xFF0C0C0C),
      ),
    );
  }
}
