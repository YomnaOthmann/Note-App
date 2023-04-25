import 'package:flutter/material.dart';

import 'add_button.dart';
import 'custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });
  //final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        //key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              CustomTextField(
                hint: "Title",
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: "Content",
                maxLines: 5,
              ),
              SizedBox(
                height: 40,
              ),
              CustomAddButton()
            ],
          ),
        ),
      ),
    );
  }
}
