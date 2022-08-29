import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );

//regular style
TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) =>
    _getTextStyle(fontSize, FontWeightManager.regular, color);

//medium style
TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) =>
    _getTextStyle(fontSize, FontWeightManager.medium, color);

//light style
TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) =>
    _getTextStyle(fontSize, FontWeightManager.light, color);

//bold style
TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) =>
    _getTextStyle(fontSize, FontWeightManager.bold, color);

//semiBold style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) =>
    _getTextStyle(fontSize, FontWeightManager.semiBold, color);
