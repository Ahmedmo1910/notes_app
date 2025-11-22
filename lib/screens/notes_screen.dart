import 'package:flutter/material.dart';
import 'package:notes/widgets/note_item_widget.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NoteItemWidget(),
      ],
    );
  }
}