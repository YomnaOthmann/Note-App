import 'package:flutter/material.dart';
import 'package:nota_app/view/widgets/custom_note_item.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/notes_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesScreenBody(),
    );
  }
}

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 16,
            ),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
