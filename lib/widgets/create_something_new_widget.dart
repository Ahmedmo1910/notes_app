import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notes/utils/app_colors.dart';
import 'package:notes/utils/app_text_styles.dart';

class CreateSomethingNewWidget extends StatelessWidget {
  final String text;
  final String animationPath;
  final double width;
  final double height;
  const CreateSomethingNewWidget({
    super.key,
    required this.text,
    required this.animationPath,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 112,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.secondaryColor, width: 2.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: 10,
            top: 10,
            child: Lottie.asset(width: width, height: height, animationPath),
          ),
          Positioned(
            top: 15,
            left: 10,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.add),
                SizedBox(width: 8),
                Text(text, style: AppTextStyles.semiBold14),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
