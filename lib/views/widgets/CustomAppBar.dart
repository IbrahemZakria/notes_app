import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Custom_appar_Icon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.title, required this.icon});
  final String title;
  final IconButton icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 28)),

          CustomAppbarIcon(icon: icon),
        ],
      ),
    );
  }
}
