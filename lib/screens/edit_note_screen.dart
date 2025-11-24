import 'package:flutter/material.dart';
import 'package:notes/utils/app_text_styles.dart';
import '../models/note_model.dart';

class EditNoteScreen extends StatelessWidget {
  final NoteModel note;
  String? title, content;
  EditNoteScreen({super.key, required this.note, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          onChanged: (value) => title = value,
          initialValue: note.title,
          style: AppTextStyles.semiBold20,
        ),
        actions: [
          TextButton(
            onPressed: () {
              note.title = title ?? note.title;
              note.content = content ?? note.content;
            },
            child: Text('Done', style: AppTextStyles.semiBold16),
          ),
        ],
      ),
    );
  }
}
