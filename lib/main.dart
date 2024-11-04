import 'package:flutter/material.dart';
import 'package:unit_6_assignment_simpas/components/tab_widget_1.dart';
import 'package:unit_6_assignment_simpas/components/tab_widget_2.dart';
import 'package:unit_6_assignment_simpas/screens/about_me.dart';
import 'package:unit_6_assignment_simpas/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: 'homePage',
      routes: {
        'homePage': (context) => const HomScreen(),
        'aboutPage': (context) => const About_Me(),
        'tabWidget1': (context) => const TabWidget1(),
        'tabWidget2': (context) => const TabWidget2(),
      },
      // Create the routes here
    );
  }
}
