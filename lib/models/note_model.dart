import 'package:flutter/material.dart' show Color;

class NoteModel {
  final String title;
  final String content;
  final DateTime dateCreated;
  final Color color;
  const NoteModel({
    required this.title,
    required this.content,
    required this.dateCreated,
    required this.color,
  });
}
