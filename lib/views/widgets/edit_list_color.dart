import 'package:flutter/material.dart';

import 'package:note_app/constants.dart';

import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/circle_color.dart';

class EditListColor extends StatefulWidget {
  const EditListColor({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditListColor> createState() => _EditListColorState();
}

class _EditListColorState extends State<EditListColor> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: CircleColor(
                  color: kColors[index],
                  isClicked: index == currentIndex,
                ),
              )),
    );
  }
}
