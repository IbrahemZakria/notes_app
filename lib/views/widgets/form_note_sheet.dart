import 'package:flutter/material.dart';
import 'package:notes_app/Constant.dart';
import 'package:notes_app/component/custome_button.dart';
import 'package:notes_app/component/custome_text_form_field.dart';

class FormNoteSheet extends StatefulWidget {
  const FormNoteSheet({super.key});

  @override
  State<FormNoteSheet> createState() => _FormNoteSheetState();
}

class _FormNoteSheetState extends State<FormNoteSheet> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? title;
  String? description;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomeTextFormField.CustomeTextformField(
            onSaved: (p0) {
              title = p0;
            },
            controller: titleController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a title';
              }
              return null;
            },
            hintText: 'Title',
            borderRadius: 16,
          ),
          SizedBox(height: 16),
          CustomeTextFormField.CustomeTextformField(
            onSaved: (p0) {
              description = p0;
            },
            controller: descriptionController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a description';
              }
              return null;
            },
            hintText: 'Description',
            borderRadius: 16,
            maxLines: 5,
          ),
          SizedBox(height: 24),
          CustomeButton(
            textbutton: 'Add Note',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                Navigator.pop(context);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
            color: kprimaryColor,
          ),
        ],
      ),
    );
  }
}
