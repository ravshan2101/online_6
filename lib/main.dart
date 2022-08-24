import 'package:flutter/material.dart';
import 'package:online_6/Page/UI7.dart';
import 'package:online_6/Page/Ui6.dart';
import 'package:online_6/Page/Uygavazifa.dart';
import 'package:online_6/Page/home_page.dart';
import 'package:online_6/Page/page4.dart';
import 'package:online_6/Page/page5.dart';
import 'package:online_6/Page/page_two.dart';
import 'package:online_6/Page/pah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          'PG2': (context) => const Page2(),
          'PG4': (context) => const PG4(),
          'home': (context) => const HomePage(),
          'UI5': (context) => const UI5(),
          "UI6": (context) => const UI6(),
          'UI7': (context) => const UI7(),
          'UY': (context) => const UygaVazifa(),
          'Mes': (context) => const Messeg()
        },
        initialRoute: 'home');
  }
}
