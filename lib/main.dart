import 'package:flutter/material.dart';
import 'package:x/view/Utils/const/const.dart';
import 'package:x/view/screens/bottomnav/bottomnavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(backgroundColor: black1),
        scaffoldBackgroundColor: black1,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      title: 'X Twitter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNav(),
    );
  }
}
