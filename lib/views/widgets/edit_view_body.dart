import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/component/custome_text_form_field.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/CustomAppBar.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key});

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title;

  String? description;

  @override
  Widget build(BuildContext context) {
    NoteModel arg = ModalRoute.of(context)!.settings.arguments as NoteModel;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Customappbar(
            title: 'Edite note',
            icon: IconButton(
              onPressed: () {
                arg.title = title ?? arg.title;
                arg.content = description ?? arg.content;
                arg.save();
                BlocProvider.of<GetNotesCubit>(context).getNotes();
                Navigator.pop(context);
              },
              icon: Icon(Icons.check_rounded),
            ),
          ),
          SizedBox(height: 16),
          CustomeTextFormField.CustomeTextformField(
            onSaved: (p0) {
              title = p0;
            },

            hintText: 'Title',
            borderRadius: 16,
          ),
          SizedBox(height: 16),
          CustomeTextFormField.CustomeTextformField(
            onSaved: (p0) {
              description = p0;
            },
            hintText: 'Description',
            borderRadius: 16,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
