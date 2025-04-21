import 'package:flutter/material.dart';
import 'package:notes_app/component/custome_button.dart';
import 'package:notes_app/component/custome_text_form_field.dart';

class ShowAddNotesSheet extends StatelessWidget {
  const ShowAddNotesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24, left: 16, right: 16),
      height: MediaQuery.of(context).size.height * 0.8,
      child: Center(
        child: Column(
          children: [
            CustomeTextFormField.CustomeTextformField(
              hintText: 'Title',
              borderRadius: 16,
            ),
            SizedBox(height: 16),
            CustomeTextFormField.CustomeTextformField(
              hintText: 'Description',
              borderRadius: 16,
              maxLines: 5,
            ),
            SizedBox(height: 24),
            CustomeButton(
              textbutton: 'Add Note',
              onPressed: () {},
              color: const Color.fromARGB(255, 158, 174, 233),
            ),
          ],
        ),
      ),
    );
  }
}
