import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note/add_note_cubit.dart';
import 'package:notes/helper_functions/date_time_helper.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteWidget extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, content;
  AddNoteWidget({super.key, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextFormField(
              hintText: 'Title',
              onSaved: (value) => title = value,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'Note here...',
              onSaved: (value) => content = value,
              maxLines: 5,
            ),
            SizedBox(height: 24),
            MainButton(
              text: 'Add Note',
              hasCircularBorder: true,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var date = DateTimeHelper.getCurrentDate();
                  NoteModel note = NoteModel(
                    title: title!,
                    content: content!,
                    date: date,
                  );
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
