import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin Helpers {
  void showSnackBar(
    BuildContext context, {
    required String message,
    bool error = false,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
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




  void showBottomSheet(BuildContext context,Widget widget) async {
    bool? confirmed =
    await showModalBottomSheet(context: context, builder: (context) {
      return BottomSheet(onClosing: () {}, builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return widget;
        });
      });
    });
  }

}
