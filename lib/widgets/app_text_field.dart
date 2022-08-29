import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.hint,
    this.prefixIcon,
    required this.keyboardType,
    required this.textEditingController,
    this.focusedBorderColor = Colors.grey,
    this.obscure = false,
    this.suffixIcon,
  }) : super(key: key);

  final String hint;
  final IconData? prefixIcon;
  final TextInputType keyboardType;
  final TextEditingController textEditingController;
  final Color focusedBorderColor;
  final Widget? suffixIcon;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      controller: textEditingController,
      cursorColor: ColorManager.primary,
      obscureText: obscure,
      style: GoogleFonts.cairo(),
      clipBehavior: Clip.antiAlias,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14),
        hintText: hint,
        hintStyle: GoogleFonts.cairo(fontSize: 13.sp),
        hintMaxLines: 1,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
      ),
    );
  }
}
