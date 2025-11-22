import 'package:flutter/material.dart';
import 'package:notes/utils/app_colors.dart';
import 'package:notes/utils/app_text_styles.dart';

import '../helper_functions/date_time_helper.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.containerColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Homework', style: AppTextStyles.semiBold14),
            SizedBox(height: 6),
            Text(
              maxLines: 2,
              'Math, Physics, Chemistry',
              style: AppTextStyles.regular12.copyWith(
                overflow: TextOverflow.ellipsis,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 6),
            Text(
              DateTimeHelper.getCurrentDate(),
              style: AppTextStyles.regular10.copyWith(
                color: AppColors.greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
