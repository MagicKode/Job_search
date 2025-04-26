import 'package:flutter/material.dart';
import 'package:job_search_frutter/ui/widgets/home_screen.dart';

void main() {
  runApp(const JobSearchApp());
}

class JobSearchApp extends StatelessWidget {
  const JobSearchApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF000000),
        fontFamily: 'SF Pro Display',
      ),
      home: HomeScreen(),
    );
  }
}
