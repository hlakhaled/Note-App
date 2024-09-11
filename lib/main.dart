import 'package:flutter/material.dart';

import 'package:note_app/views/note_app_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/update_note_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
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
    );
  }
}
