import 'package:flutter/material.dart';

class AppColors {
  // Backgrounds
  static const Color backgroundPrimary = Color(0xFFFBF4EB);
  
  // Secondary colors
  static const Color secondary1 = Color(0xFFFBD9E5);
  static const Color secondary2 = Color(0xFFC56682);
  static const Color secondary3 = Color(0xFFE7A48C);
  
  // Accent
  static const Color accent = Color(0xFFC43A4A);
  
  // Text colors
  static const Color textDark = Color(0xFF3E2723);
  static const Color textMedium = Color(0xFF5D4037);
  static const Color textLight = Color(0xFF8D6E63);
  static const Color textHint = Color(0xFFA1887F);
  
  // Whites and neutrals
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightGray = Color(0xFFFAF7F2);
  static const Color mediumGray = Color(0xFFF5F5F5);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.backgroundPrimary,
      primaryColor: AppColors.accent,
      
      colorScheme: ColorScheme.light(
        primary: AppColors.accent,
        secondary: AppColors.secondary2,
        tertiary: AppColors.secondary3,
        surface: AppColors.white,
        error: AppColors.accent,
      ),
      
      // Text themes
      textTheme: TextTheme(
        // Display styles
        displayLarge: _textStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: AppColors.textDark,
        ),
        displayMedium: _textStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: AppColors.textDark,
        ),
        displaySmall: _textStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: AppColors.textDark,
        ),
        
        // Headline styles
        headlineLarge: _textStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: AppColors.textDark,
        ),
        headlineMedium: _textStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
        ),
        headlineSmall: _textStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
        ),
        
        // Title styles
        titleLarge: _textStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
        ),
        titleMedium: _textStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.textDark,
        ),
        titleSmall: _textStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.textDark,
        ),
        
        // Body styles
        bodyLarge: _textStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.textMedium,
        ),
        bodyMedium: _textStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.textMedium,
        ),
        bodySmall: _textStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.textLight,
        ),
        
        // Label styles
        labelLarge: _textStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
        ),
        labelMedium: _textStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.textMedium,
        ),
        labelSmall: _textStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          color: AppColors.textLight,
        ),
      ),
      
      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accent,
          foregroundColor: AppColors.white,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          textStyle: _textStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // Outlined button theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.accent,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          side: const BorderSide(color: AppColors.accent, width: 2),
          textStyle: _textStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.mediumGray, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.mediumGray, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.accent, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.accent, width: 1),
        ),
        hintStyle: _textStyle(
          fontSize: 14,
          color: AppColors.textHint,
        ),
        labelStyle: _textStyle(
          fontSize: 14,
          color: AppColors.textMedium,
        ),
      ),
      
      // AppBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundPrimary,
        foregroundColor: AppColors.textDark,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: _textStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
        ),
      ),
    );
  }
  
  static TextStyle _textStyle({
    required double fontSize,
    FontWeight fontWeight = FontWeight.w400,
    Color color = AppColors.textMedium,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: 'Poppins',
      letterSpacing: letterSpacing,
      height: height,
    );
  }
}
