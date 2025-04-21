import 'package:flutter/material.dart';

class CustomAppbarIcon extends StatelessWidget {
  const CustomAppbarIcon({required this.icon, super.key});

  final IconButton icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: icon,
    );
  }
}
