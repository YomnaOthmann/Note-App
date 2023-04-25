import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nota_app/view/widgets/custom_appbar.dart';
import 'package:nota_app/view/widgets/custom_textfield.dart';

class EditnoteScreen extends StatelessWidget {
  const EditnoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EditNoteBody(),
      ),
    );
  }
}

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key});

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const CustomAppBar(
              icon: FontAwesomeIcons.check,
              title: "Edit Note",
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              hint: "Title",
              controller: titleController,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
              controller: contentController,
            ),
          ],
        ),
      ),
    );
  }
}
