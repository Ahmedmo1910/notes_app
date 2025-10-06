import 'package:flutter/material.dart';
import 'package:notes/utils/app_text_styles.dart';
import 'package:notes/widgets/auth_switch.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Welcome back', style: AppTextStyles.semiBold24),
          SizedBox(height: 8),
          Text(
            'Hi, you need to register to enter',
            style: AppTextStyles.semiBold16.copyWith(color: Color(0xFF6B6565)),
          ),
          SizedBox(height: 32),
         AuthSwitchAnimated(),
          //SocialAccountsRegister(),
        ],
      ),
    );
  }
}
class SocialAccountsRegister extends StatelessWidget {
  const SocialAccountsRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('OR', style: AppTextStyles.medium12),
        const SizedBox(height: 16),
        Text('continue with social account', style: AppTextStyles.medium12),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              //child: SvgPicture.asset('assets/icons/google.svg'),
            ),
            const SizedBox(width: 24),
            GestureDetector(
              onTap: () {},
              //child: SvgPicture.asset('assets/icons/apple.svg'),
            ),
          ],
        ),
      ],
    );
  }
}