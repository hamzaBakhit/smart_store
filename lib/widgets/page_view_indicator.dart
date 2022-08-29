import 'package:flutter/material.dart';
import 'package:smart_store/presintation/resources/color_manager.dart';

class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({
    Key? key,
    required this.isCurrentPage,
  }) : super(key: key);

  final bool isCurrentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      height: 4,
      width: 18,
      decoration: BoxDecoration(
        color: isCurrentPage == true ? ColorManager.primary : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
