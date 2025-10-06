import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_text_field.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomTextFormField(
            borderRadius: 28,
            hintText: 'Find any note, task or document',
            suffixIcon: Icon(Icons.search),
            ),
        ],
      ),
    );
  }
}
