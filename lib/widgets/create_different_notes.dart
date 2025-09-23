import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notes/utils/app_text_styles.dart';

class CreateDifferentNotes extends StatelessWidget {
  final String iconPath;
  final String text;
  const CreateDifferentNotes({
    super.key,
    required this.iconPath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500] ?? Colors.grey,
            offset: Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(iconPath),
          SizedBox(height: 4,),
          Text(text, style: AppTextStyles.regular12),
        ],
      ),
    );
  }
}
