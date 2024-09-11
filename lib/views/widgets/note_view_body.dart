import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:note_app/views/widgets/custom_app_bar.dart';

import 'package:note_app/views/widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(
            height: 18.h,
          ),
          const CustomAppBar(icon: Icons.search, text: "Notes"),
          SizedBox(
            height: 12.h,
          ),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
