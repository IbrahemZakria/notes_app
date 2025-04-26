import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Constant.dart';
import 'package:notes_app/component/custome_button.dart';
import 'package:notes_app/component/custome_text_form_field.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/helper/component/UserMessage.dart';
import 'package:notes_app/models/note_model.dart';

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
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (BuildContext context, AddNoteState state) {
          if (state is AddNoteErrorState) {
            Usermessage.show(
              message: 'Failed to add note, please try again',
              backgroundColor: Colors.red,
            );
          } else if (state is AddNoteSuccessState) {
            Navigator.pop(context);
            Usermessage.show(
              message: 'Note added successfully',
              backgroundColor: kprimaryColor,
            );
          }
        },
        builder: (context, state) {
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
                  icon:
                      state is AddNoteLoadingState
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text(
                            'Add Note',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      NoteModel note = NoteModel(
                        title: title!,
                        content: description!,
                        dateCreated: DateTime.now().toString(),
                        color:
                            Color.fromRGBO(
                              Random().nextInt(128) + 128,
                              Random().nextInt(128) + 128,
                              Random().nextInt(128) + 128,
                              1,
                            ).value,
                      );
                      await BlocProvider.of<AddNoteCubit>(
                        context,
                      ).addnotes(note);
                      await BlocProvider.of<GetNotesCubit>(context).getNotes();
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
        },
      ),
    );
  }
}
