import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_reminder/base.dart';
import 'package:to_do_reminder/counter_provider.dart';
import 'package:to_do_reminder/fourth_page.dart';
import 'package:to_do_reminder/home.dart';
import 'package:to_do_reminder/second_page.dart';
import 'package:to_do_reminder/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const BasePage(),
        initialRoute: "/",
        routes: {
          '/home': (BuildContext context) => const MyHomePage(title: "title"),
          '/Second': (BuildContext context) => const SecondPage(),
          '/Third': (BuildContext context) => const ThirdPage(),
          '/Fourth': (BuildContext context) => const FourthPage(),
        },
      ),
    );
  }
}
