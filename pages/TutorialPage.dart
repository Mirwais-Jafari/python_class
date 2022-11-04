import 'package:flutter/material.dart';
import 'package:python_class/components/Tutorials/Classes.dart';
import 'package:python_class/components/Tutorials/ControlFlow.dart';
import 'package:python_class/components/Tutorials/DataStructure.dart';

import "../components/Tutorials/Introduction.dart";

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlue,
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text("Introduction"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Introduction()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.loop),
              title: const Text("Control Flow"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ControlFlow()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.data_array),
              title: const Text("Data Structure"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DataStructure(),
                    ));
              },
            ),
            ListTile(
                leading: const Icon(Icons.loop),
                title: const Text("Classes"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Classes()));
                }),
          ],
        ),
      ),
    );
  }
}
