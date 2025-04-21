import 'package:flutter/material.dart' show Color;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final DateTime dateCreated;
  @HiveField(3)
  final Color color;
  NoteModel({
    required this.title,
    required this.content,
    required this.dateCreated,
    required this.color,
  });
}
