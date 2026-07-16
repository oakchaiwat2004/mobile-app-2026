import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // Private constructor to prevent instantiation
  //main colors
  static const Color primary = Color(0xFF6200EE);
  static const Color secondary = Color.fromRGBO(255, 33, 150, 243);
  
  //background colors
  static const Color bgPrimary = Color.fromARGB(255, 201, 255, 251);
  static const Color bgSecondary = Color.fromARGB(255, 255, 255, 255);

  //text colors
  static const Color textPrimary = Color.fromARGB(255, 0, 0, 0);
  static const Color textSecondary = Color.fromARGB(255, 117, 117, 117);

  //status colors
  static const Color success = Color.fromARGB(255, 76, 175, 80);
  static const Color warning = Color.fromARGB(255, 255, 193, 7);  
  static const Color danger = Color.fromARGB(255, 244, 67, 54);
  static const Color info = Color.fromARGB(255, 33, 150, 243);
}