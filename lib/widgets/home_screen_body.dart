import 'package:flutter/material.dart';
import 'package:notes/helper_functions/date_time_helper.dart';
import 'package:notes/utils/app_colors.dart';
import 'package:notes/widgets/time_and_date_widget.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 350 / 184,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(16),
              ),
              height: 200,

              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset('assets/images/greeting.png')],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(DateTimeHelper.getGreeting()),
                        Text('Text will be here'),
                        Spacer(),
                        Row(
                          children: [
                            TimeAndDateWidget(
                              width: 78,
                              height: 28,
                              text: DateTimeHelper.getCurrentDate(),
                            ),
                            const SizedBox(width: 9),
                            TimeAndDateWidget(
                              width: 66,
                              height: 28,
                              text: DateTimeHelper.getCurrentTime(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
