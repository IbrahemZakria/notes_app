import 'package:flutter/material.dart';
import 'package:notes_app/Constant.dart';

// ignore: must_be_immutable
class CustomeTextFormField extends StatelessWidget {
  CustomeTextFormField.CustomeTextformField({
    this.obscureText = false,
    this.hintText,
    this.onSaved,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.textColor = Colors.white,
    this.controller,
    this.borderRadius,
    this.maxLines,
    this.bordercolor = Colors.white,
  });
  double? borderRadius;
  String? hintText;
  String? Function(String?)? validator;
  Function(String)? onSaved;
  bool obscureText;
  IconButton? prefixIcon;
  IconButton? suffixIcon;
  Color bordercolor;
  Color? textColor;
  TextEditingController? controller;
  int? maxLines;
  OutlineInputBorder buildborder({Color bordercolor = Colors.white}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 12),
      borderSide: BorderSide(color: bordercolor, width: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          return validator != null ? validator!(value) : null;
        },
        onChanged: onSaved,
        cursorColor: kprimaryColor.withValues(alpha: 1),
        maxLines: maxLines ?? 1,
        style: TextStyle(color: textColor),
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText ?? '',
          hintStyle: TextStyle(color: textColor),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(bordercolor: kprimaryColor),
        ),
      ),
    );
  }
}
