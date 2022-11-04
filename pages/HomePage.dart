import 'dart:io';
import 'package:flutter/material.dart';
import 'package:python_class/components/Tutorials/CodeIt.dart';
import 'package:python_class/components/Tutorials/Introduction.dart';
import 'package:python_class/pages/TutorialPage.dart';
import "package:python_class/pages/OptionsPage.dart";

class AppColor {
  static final primaryColor = Color.fromARGB(255, 14, 244, 125);
  static final secondaryColor = Color.fromARGB(255, 40, 44, 48);
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Python Tutorials App"),
      ),
      backgroundColor: Colors.teal,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const Center(
              child: Text(
                "PYTHON CLASS",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  // fontFamily: 'cursive',
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.app_registration),
              title: const Text("Sign in"),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("assets/images/logo.png"),
              title: const Text("Tutorials"),
              onTap: () {
                Navigator.of(context)?.push(MaterialPageRoute(
                  builder: (context) => const TutorialPage(),
                ));
              },
            ),
            ListTile(
                leading: const Icon(Icons.quiz),
                title: const Text("Quizzes"),
                onTap: () {
                  Navigator.of(context)?.push(MaterialPageRoute(
                    builder: (context) => const Options(),
                  ));
                }),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Code it"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CodeIt(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.bug_report),
              title: const Text("Bug Report"),
              // it should connect to email
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.close),
              title: const Text("Quit"),
              onTap: () => exit(0),
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
      body: Padding( 
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 30.0,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: Image.asset("assets/images/logo.png"),
              textColor: Colors.blue,
              title: const Text("Tutorials"),
              tileColor: Colors.white,
              onTap: () {
                Navigator.of(context)?.push(MaterialPageRoute(
                  builder: (context) => const TutorialPage(),
                ));
              },
              iconColor: Colors.green,
            ),
            MaterialButton(
              shape: const StadiumBorder(),
              onPressed: () {
                Navigator.of(context)?.push(MaterialPageRoute(
                    builder: (context) => const TutorialPage()));
              },
              elevation: 20.0,
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text("Introduction"),
            ),
          ],
        ),
      ),
    );
  }
}
