import 'package:flutter/material.dart';
import 'package:notes/utils/app_text_styles.dart';
import 'package:notes/widgets/create_different_notes.dart';
import 'package:notes/widgets/create_something_new_widget.dart';
import 'package:notes/widgets/home_greeting_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeGreetingWidget(),
          SizedBox(height: 32),
          Text('Create something new', style: AppTextStyles.semiBold16),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CreateSomethingNewWidget(
                width: 120.0,
                height: 120.0,
                text: 'New Note',
                animationPath: 'assets/animation/newNote.json',
              ),
              CreateSomethingNewWidget(
                width: 110.0,
                height: 100.0,
                text: 'New Task',
                animationPath: 'assets/animation/newTask.json',
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CreateDifferentNotes(
                iconPath: 'assets/icons/event.svg',
                text: 'Event',
              ),
              CreateDifferentNotes(
                iconPath: 'assets/icons/note_book.svg',
                text: 'Notebook',
              ),
              CreateDifferentNotes(
                iconPath: 'assets/icons/mic.svg',
                text: 'Audio',
              ),
              CreateDifferentNotes(
                iconPath: 'assets/icons/camera.svg',
                text: 'Camera',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
