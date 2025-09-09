
import 'package:flutter/material.dart';
import 'package:notes/utils/app_colors.dart';

class TimeAndDateWidget extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  const TimeAndDateWidget({
    super.key,
    required this.text,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.lightSecondaryColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(child: Text(text, style:TextStyle(color: AppColors.timeColor,fontSize: 12))),
    );
  }
}
