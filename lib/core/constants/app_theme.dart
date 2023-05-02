import 'package:flutter/material.dart';

const black = Color(0xFF101823);
const black_second = Colors.black;
const white = Color(0xFFFFFFFF);
const grey = Color(0xFF787878);

class AppTheme {
  final dailyStoreTheme = ThemeData(
    scaffoldBackgroundColor: black,
    appBarTheme:
        const AppBarTheme(backgroundColor: Colors.transparent, elevation: 5),
    textTheme: const TextTheme(
        headline5: TextStyle(color: white, fontSize: 16),
        headline6: TextStyle(color: white, fontSize: 15)),
  );
}
