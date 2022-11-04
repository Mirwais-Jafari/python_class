import "package:flutter/material.dart";
import 'package:python_class/screens/quiz_screen.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Python Quizzes"),
      ),
      // backgroundColor: Colors.orange,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 48.0,
          horizontal: 12.0,
        ),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)?.push(MaterialPageRoute(
                  builder: (context) => const QuizPage(),
                ));
              },
              child: const Text(
                "Variables",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
