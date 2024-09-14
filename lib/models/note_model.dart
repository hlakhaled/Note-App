import 'package:hive/hive.dart';
part 'note_model.g.dart';
@HiveType(typeId: 0)//no class can take the same(unique)  - say to build runner that class want generate 
class NoteModel extends HiveObject {
  @HiveField(0)//maybe another class take it  - the number is unique for this class
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
