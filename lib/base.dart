import 'package:flutter/material.dart';
import 'package:to_do_reminder/bottom_nav_bar.dart';
import 'package:to_do_reminder/fourth_page.dart';
import 'package:to_do_reminder/home.dart';
import 'package:to_do_reminder/second_page.dart';
import 'package:to_do_reminder/third_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final _mainPages = [
    const MyHomePage(
      title: 'Home',
    ),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi"),
      ),
      body: _mainPages[1],
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
