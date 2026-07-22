import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';


class AppTextStyles {
  AppTextStyles._();

  static TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static TextStyle heading3 = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
  
}