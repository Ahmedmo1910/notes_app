import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notes/utils/app_text_styles.dart';
import 'package:notes/widgets/custom_text_field.dart';

class TextFormFieldDecoration extends StatelessWidget {
  final String iconPath;
  final String hintText;
  final String hint;
  const TextFormFieldDecoration({
    required this.iconPath,
    required this.hintText,
    this.hint = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(hintText, style: AppTextStyles.semiBold16),
            SvgPicture.asset(iconPath),
          ],
        ),
        CustomTextFormField(hintText: hint),
      ],
    );
  }
}
