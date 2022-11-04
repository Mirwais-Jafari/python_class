import 'dart:ffi';

import 'package:python_class/pages/HomePage.dart';
import 'package:python_class/screens/quiz_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  Color mainColor = const Color(0xFF252c4a);
  Color secondColor = const Color(0xFF117eeb);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Your score is :",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Text(
                "${widget.score}",
                style: const TextStyle(
                  color: Colors.lime,
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)?.push(MaterialPageRoute(
                      builder: (context) => const QuizPage()));
                },
                color: Colors.teal,
                textColor: Colors.white,
                child: const Text(
                  "Try again",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context)?.push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
                color: Colors.teal,
                textColor: Colors.white,
                child: const Text(
                  "Go to home",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}
