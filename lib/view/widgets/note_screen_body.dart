import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'notes_listview.dart';

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            CustomAppBar(),
            SizedBox(
              height: 16,
            ),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
