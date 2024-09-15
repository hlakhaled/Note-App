import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/models/note_model.dart';

import 'package:note_app/themes/text_style.dart';
import 'package:note_app/views/update_note_view.dart';

class CustomMessageContainer extends StatelessWidget {
  const CustomMessageContainer({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateNoteView.id);
      },
      child: Container(
        padding: EdgeInsets.only(left: 16.w, top: 24.h, bottom: 24.h),
        decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: Text(
                  note.title,
                  style: TextStyles.title,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Text(
                    note.subTitle,
                    style: TextStyles.subtitle,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24.sp,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Text(
                note.date,
                style: TextStyles.date,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
