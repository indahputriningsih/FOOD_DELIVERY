import 'package:flutter/material.dart';
import 'package:food_delivery/menu.dart';
import 'package:food_delivery/pages/see_all.dart';
import 'package:food_delivery/pages/filter_pages.dart';
import 'package:food_delivery/pages/loadingPage.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FOOD DELIVERY",
      home: loadingPage(),
    );
  }
}
