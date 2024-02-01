

import 'package:e_commerce/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static TextTheme lightTextTheme=const TextTheme(
    bodyLarge:
    TextStyle(
      color: Colors.white,
      fontSize:60 ,
      fontWeight: FontWeight.w700
    ) ,
    bodyMedium:TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: Colors.black
    ) ,
    bodySmall:TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 16
    ) ,
    displayLarge:TextStyle(
      color: Colors.black,
      fontSize: 26,
      fontWeight: FontWeight.w600
    ) ,
    displayMedium:TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w300,
      color: Colors.white
    ),
    displaySmall: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w200
    )
  );

  ThemeData light(){
    return ThemeData(

        brightness: Brightness.light,

        appBarTheme: const AppBarTheme(

            foregroundColor:Colors.black ,

            backgroundColor: Colors.white,
            centerTitle: true,
         actionsIconTheme: IconThemeData(
            size: 18.46
          ),

        elevation: 0,


        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            foregroundColor:Colors.white ,
            backgroundColor: AppColors.appColor
        ),
        checkboxTheme: const CheckboxThemeData(),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedItemColor: Colors.black,
          selectedItemColor: AppColors.appColor
        ),
        textTheme: lightTextTheme,
      scaffoldBackgroundColor: Colors.white,


    );
  }
}