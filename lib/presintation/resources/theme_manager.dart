import 'package:flutter/material.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/font_manager.dart';
import 'package:smart_store/presintation/resources/style_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';

ThemeData getApplicationTheme() => ThemeData(
      // floating action button theme
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: ColorManager.primary,
        ),
      //app bar theme
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: ColorManager.grey1),
      ),
      //scaffold
      scaffoldBackgroundColor: ColorManager.white,
      // main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: Colors.white,
      primaryColorDark: const Color(0xff262B31),

      // icon theme
      primaryIconTheme: IconThemeData(
        color: ColorManager.primary,
      ),
      //  text theme
      textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: FontSize.s16),
        headlineLarge: getSemiBoldStyle(
            color: ColorManager.darkGrey, fontSize: AppSize.s16),
        titleMedium:
            getMediumStyle(color: ColorManager.primary, fontSize: AppSize.s16),
        bodyLarge: getRegularStyle(color: ColorManager.grey1),
        bodySmall: getRegularStyle(color: ColorManager.grey),
        headlineMedium: getRegularStyle(
            color: ColorManager.darkGrey, fontSize: AppSize.s16),
      ),

      //inout decoration theme
      inputDecorationTheme: InputDecorationTheme(
        //  content padding

        // filled color
        fillColor: ColorManager.textFieldBorderColor,
        filled: true,
        // text style
        hintStyle:
            getRegularStyle(color: ColorManager.grey, fontSize: AppSize.s14),
        labelStyle:
            getRegularStyle(color: ColorManager.grey, fontSize: AppSize.s14),
        errorStyle: getRegularStyle(color: ColorManager.error),

        //  enabled border style
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorManager.textFieldBorderColor, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s20)),
        ),

        //  focused border style
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: ColorManager.textFieldBorderColor, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s20)),
        ),

        // error border style
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s20)),
        ),

        //  focused error style
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s20)),
        ),
      ),
    );
