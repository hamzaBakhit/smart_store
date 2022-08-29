import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../presintation/resources/color_manager.dart';
import '../presintation/resources/values_manager.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({Key? key, required this.actionName,required this.onTab}) : super(key: key);

  final Function() onTab;
  final String actionName;
  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: onTab,
      child:  Text(actionName),
      style: TextButton.styleFrom(
          backgroundColor: ColorManager.primary,
          primary: ColorManager.white,
          minimumSize:  Size(double.infinity, AppSize.s64),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
