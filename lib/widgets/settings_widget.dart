import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/assets_manager.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/static_widget_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key, required this.icon, required this.label, required this.widget}) : super(key: key);

    final IconData icon;
  final String label;
  final Widget widget;

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: AppSize.s60,
          decoration: BoxDecoration(
            color: ColorManager.grey2.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppSize.s20),
          ),
          child:  Row(
            children: [
              SizedBox(width: 10,),
              Icon(widget.icon,color: ColorManager.primary,),
              SizedBox(width: 10,),
              Text(
                widget.label,
                style: GoogleFonts.cairo(fontWeight: FontWeight.bold,fontSize: AppSize.s16),
              ),
              Spacer(),
              widget.widget,
            ],
          ),

        ),
        getSizedBox20(),
      ],
    );
  }

}
