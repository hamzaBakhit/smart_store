import 'package:flutter/material.dart';
import 'package:smart_store/presintation/resources/values_manager.dart';

void getBottomSheet(BuildContext context, Widget widget) async {
  bool? confirmed = await showModalBottomSheet(
    context: context,
    clipBehavior: Clip.antiAlias,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSize.s20),
            topRight: Radius.circular(AppSize.s20))),
    builder: (context) {
      return BottomSheet(
        onClosing: () {},
        builder: (context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return widget;
            },
          );
        },
      );
    },
  );
}

getDialog(BuildContext context,Widget widget) async {
  bool? result = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: widget,
        );
      });
}
