import 'package:flutter/material.dart';
import 'package:tsue/pages/home_page/home_page.dart';
import 'package:tsue/pages/nav_bar/bottom_bar.dart';

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

        primarySwatch: Colors.blue,
      ),
      home:  BottomNavBar(initialIndex: 0),
      routes: {
        BottomNavBar.id: (context) => BottomNavBar(initialIndex: 0),
      },
    );
  }
}


