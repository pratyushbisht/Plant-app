import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'Main page/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
       primaryColor: KprimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: KtextColor),

      ),
      home: HomeScreen(),
    );
  }
}


