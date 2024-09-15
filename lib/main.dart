import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';

import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/note_app_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/simple_bloc_observer.dart';
import 'package:note_app/views/update_note_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter()); //you make it from model
  await Hive.openBox<NoteModel>(kNotebox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      child: BlocProvider<NotesCubit>(
        create: (context) => NotesCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: "Poppins",
          ),
          routes: {
            NoteAppView.id: (context) => const NoteAppView(),
            UpdateNoteView.id: (context) => const UpdateNoteView()
          },
          initialRoute: NoteAppView.id,
        ),
      ),
    );
  }
}
