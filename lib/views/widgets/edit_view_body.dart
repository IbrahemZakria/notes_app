import 'package:flutter/material.dart';
import 'package:notes_app/component/custome_text_form_field.dart';
import 'package:notes_app/views/widgets/CustomAppBar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Customappbar(
            title: 'Edite note',
            icon: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.check_rounded),
            ),
          ),
          SizedBox(height: 16),
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
        ],
      ),
    );
  }
}
