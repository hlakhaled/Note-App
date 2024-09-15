import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:note_app/views/widgets/circle_color.dart';

class ListCircleItem extends StatefulWidget {
  const ListCircleItem({
    super.key,
  });

  @override
  State<ListCircleItem> createState() => _ListCircleItemState();
}

class _ListCircleItemState extends State<ListCircleItem> {
  int currentIndex = 0;

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
                  context.read<AddNoteCubit>().color = kColors[index];
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
