import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/main_screen.dart';
import 'package:notes/models/note_model.dart';
import 'services/custom_bloc_observer.dart';
import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(noteBox);
  Bloc.observer = CustomBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        fontFamily: 'Inter',
      ),
      debugShowCheckedModeBanner: false,
      title: 'Notes',
      home: MainScreen(),
    );
  }
}
