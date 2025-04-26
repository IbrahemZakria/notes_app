import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    this.onPressed,
    // required this.textbutton,
    required this.icon,
    this.color,
  });
  final Function()? onPressed;
  // final String textbutton;
  final Color? color;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(padding: const EdgeInsets.all(8.0), child: icon),
      ),
    );
  }
}
