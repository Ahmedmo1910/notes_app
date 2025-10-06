import 'package:flutter/material.dart';
import 'package:notes/utils/app_colors.dart';
import 'package:notes/utils/app_text_styles.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/text_form_field_decoration.dart';

class AuthSwitchAnimated extends StatefulWidget {
  const AuthSwitchAnimated({super.key});

  @override
  State<AuthSwitchAnimated> createState() => _AuthSwitchAnimatedState();
}

class _AuthSwitchAnimatedState extends State<AuthSwitchAnimated> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.66,
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            color: AppColors.bottomAppBarColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Stack(
            children: [
              // The animated moving background
              AnimatedAlign(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOutBack,
                alignment: isLogin
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.66 / 2,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD5D56F),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => isLogin = true),
                      child: Center(
                        child: Text(
                          'Login',
                          style: AppTextStyles.semiBold14.copyWith(
                            color: isLogin
                                ? Colors.black
                                : const Color(0xFF6B6565),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => isLogin = false),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: AppTextStyles.semiBold14.copyWith(
                            color: isLogin
                                ? const Color(0xFF6B6565)
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (child, animation) =>
              FadeTransition(opacity: animation, child: child),
          layoutBuilder: (currentChild, previousChildren) {
            return currentChild ?? const SizedBox.shrink();
          },
          child: isLogin
              ? const LoginForm(key: ValueKey('login'))
              : const SignupForm(key: ValueKey('signup')),
        ),
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          TextFormFieldDecoration(
            hintText: 'Email',
            iconPath: 'assets/icons/email.svg',
            hint: 'ahmed@gmail.com',
          ),
          const SizedBox(height: 12),
          TextFormFieldDecoration(
            hintText: 'Password',
            iconPath: 'assets/icons/password.svg',
            hint: '********',
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot Password',
              style: AppTextStyles.regular14.copyWith(
                color: const Color(0xFF6B6565),
              ),
            ),
          ),
          const SizedBox(height: 24),
          MainButton(text: 'Login', onTap: () {}),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          TextFormFieldDecoration(
            hintText: 'User Name',
            iconPath: 'assets/icons/profile.svg',
            hint: 'ahmed',
          ),
          const SizedBox(height: 12),
          TextFormFieldDecoration(
            hintText: 'Email',
            iconPath: 'assets/icons/email.svg',
            hint: 'ahmed@gmail.com',
          ),
          const SizedBox(height: 12),
          TextFormFieldDecoration(
            hintText: 'Password',
            iconPath: 'assets/icons/password.svg',
            hint: '********',
          ),
          const SizedBox(height: 12),
          TextFormFieldDecoration(
            hintText: 'Confirm Your Password',
            iconPath: 'assets/icons/password.svg',
            hint: '********',
          ),
          const SizedBox(height: 24),
          MainButton(text: 'Sign Up', onTap: () {}),
        ],
      ),
    );
  }
}
