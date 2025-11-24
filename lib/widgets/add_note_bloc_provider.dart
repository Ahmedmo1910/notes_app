import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubits/add_note/add_note_cubit.dart';
import 'package:notes/widgets/add_note_widget.dart';
import 'package:quickalert/quickalert.dart';
import '../cubits/add_note/add_note_state.dart';
import 'custom_dialog_widget.dart';

class AddNoteBlocProvider extends StatelessWidget {
  const AddNoteBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            CustomDialogWidget(
              type: QuickAlertType.error,
              text: 'Failed to add note. Please try again.❌',
            );
          }
          if (state is AddNoteSuccess) {
            Navigator.of(context).pop();
            CustomDialogWidget(
              type: QuickAlertType.success,
              text: ' Note added successfully!🎉',
            );
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading,
            child: AddNoteWidget(),
          );
        },
      ),
    );
  }
}
