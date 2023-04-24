import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

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
          children: [const CustomAppBar()],
        ),
      ),
    );
  }
}
