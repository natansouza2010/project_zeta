import 'package:flutter/material.dart';

const black = Color(0xFF101823);
const black_second = Colors.black;
const white = Color(0xFFFFFFFF);
const white2 = Color(0xFFFFFBF5);
const grey = Color(0xFF787878);
const redAccent = Color(0xFFfd4556);

class AppTheme {
  final dailyStoreTheme = ThemeData(
    scaffoldBackgroundColor: redAccent,
    appBarTheme: const AppBarTheme(backgroundColor: black, elevation: 5),
    textTheme: const TextTheme(
        headline5: TextStyle(color: white, fontSize: 16),
        headline6: TextStyle(color: white, fontSize: 15)),
  );
}
