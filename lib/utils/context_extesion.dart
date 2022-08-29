import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';
import 'package:smart_store/widgets/app_text_button.dart';

extension ContextHelper on BuildContext {
  void showSnackBar({
    required String message,
    bool error = false,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: GoogleFonts.cairo(),
        ),
        backgroundColor: error ? Colors.red.shade700 : Colors.blue.shade700,
        duration: Duration(seconds: 1),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }

// AppLocalizations  get localizations{
//   return AppLocalizations.of(this)!;
// }
}
