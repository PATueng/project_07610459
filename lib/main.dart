import 'package:flutter/material.dart';
import 'package:project_07610459/pages/home_page.dart';
import 'package:project_07610459/pages/random_page.dart';
import 'package:project_07610459/pages/success_page.dart';
import 'package:project_07610459/pages/unsucccess_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routes: {
        RandomPage.routeName: (context) => const RandomPage(),
        HomePage.routeName: (context) => const HomePage(),
        SuccessPage.routeName: (context) => const SuccessPage(),
        UnSuccessPage.routeName: (context) => const UnSuccessPage(),
      },
      initialRoute: HomePage.routeName,
    );
  }
}




