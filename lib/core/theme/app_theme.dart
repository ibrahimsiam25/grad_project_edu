import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  const AppTheme._();

  // Editable to the current project business needs
  // static _lightBorder([Color color = AppColors.black]) => OutlineInputBorder(
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(8.r),
  //       ),
  //       borderSide: BorderSide(
  //         color: color,
  //         width: 1,
  //       ),
  //     );

  static final ThemeData lightTheme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // primaryColor: AppColors.primaryRed,
    scaffoldBackgroundColor: AppColors.backGround,
    datePickerTheme: const DatePickerThemeData(),
    timePickerTheme: const TimePickerThemeData(),
  );

  static final ThemeData darkTheme = ThemeData.dark(
    useMaterial3: true,
  ).copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // primaryColor: AppColors.primaryColor,
  );
}
