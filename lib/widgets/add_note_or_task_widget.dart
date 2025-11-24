import 'package:flutter/material.dart';
import 'add_note_widget.dart';
import 'create_something_new_widget.dart';

class AddNoteOrTaskWidget extends StatelessWidget {
  const AddNoteOrTaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CreateSomethingNewWidget(
          width: 120.0,
          height: 120.0,
          text: 'New Note',
          animationPath: 'assets/animation/newNote.json',
          onTap: () {
            showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context, builder: (context) {
              return AddNoteWidget();
            });
          },
        ),
        CreateSomethingNewWidget(
          width: 110.0,
          height: 100.0,
          text: 'New Task',
          animationPath: 'assets/animation/newTask.json',
        ),
      ],
    );
  }
}
