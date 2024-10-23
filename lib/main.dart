import 'package:bubble_tea/models/shop.dart';
import 'package:bubble_tea/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BubbleTeaShop(),
      builder: (context,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.brown,
          primaryColor: Colors.brown,
          appBarTheme: AppBarTheme(
            color: Colors.brown,
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold)
          ),
          sliderTheme: SliderThemeData(
            activeTrackColor: Colors.brown,
            activeTickMarkColor: Colors.black,
            valueIndicatorColor: Colors.brown,
            thumbColor: Colors.brown[800],
          ),
        ),
        home: IntroPage(),
      ),
    );
  }
}
