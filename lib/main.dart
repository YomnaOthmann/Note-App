import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nota_app/constants/strings.dart';
import 'package:nota_app/view/screens/home_screen.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNoteBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      home: const HomeScreen(),
    );
  }
}
