import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  NoteItem({required this.color, super.key});
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            title: Text(
              'Flutter Note',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              'This is a note description.ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            trailing: Icon(Icons.delete, color: Colors.red, size: 30),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('12/12/2023', style: TextStyle(color: Colors.black54)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
