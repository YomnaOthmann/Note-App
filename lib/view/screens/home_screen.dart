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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomAppBar(),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsetsDirectional.only(
                bottom: 8,
                end: 16,
                top: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsetsDirectional.only(
                      top: 8,
                      bottom: 8,
                      start: 16,
                    ),
                    title: const Text(
                      "Note Title",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: const Text(
                      "Note body",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Text(
                      "May21 2023",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
