import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class CustomDialogWidget extends StatelessWidget {
  final QuickAlertType type;
  final String text;
  const CustomDialogWidget({super.key, required this.type, required this.text});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      QuickAlert.show(context: context, type: type, text: text);
    });
    return const SizedBox.shrink();
  }
}
