import 'package:flutter/material.dart';

class ControlFlow extends StatelessWidget {
  const ControlFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Introduction to Control Flow"),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(18.0),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  text:
                      "if Statements\nPerhaps the most well-known statement type is the if statement. For example:\n >>> x = int(input('Please enter an integer: ')) \nPlease enter an integer: 42\n>>> if x < 0:\n...     x = 0\n...     print('Negative changed to zero')\n... elif x == 0:\n...     print('Zero')\n... elif x == 1:\n...     print('Single')\n... else:\n...     print('More')\n...\nMore\nThere can be zero or more elif parts, and the else part is optional. The keyword 'elif' is short for 'else if', and is useful to avoid excessive indentation. An if … elif … elif … sequence is a substitute for the switch or case statements found in other languages\n for Statements\nThe for statement in Python differs a bit from what you may be used to in C or Pascal. Rather than always iterating over an arithmetic progression of numbers (like in Pascal), or giving the user the ability to define both the iteration step and halting condition (as C), Python’s for statement iterates over the items of any sequence (a list or a string), in the order that they appear in the sequence. For example (no pun intended):\n>>> # Measure some strings:\n... words = ['cat', 'window', 'defenestrate']\n>>> for w in words:\n...     print(w, len(w))\n...\ncat 3\nwindow 6\ndefenestrate 12\nCode that modifies a collection while iterating over that same collection can be tricky to get right. Instead, it is usually more straight-forward to loop over a copy of the collection or to create a new collection:\n# Strategy:  Iterate over a copy\nfor user, status in users.copy().items():\n    if status == 'inactive':\n        del users[user]\n# Strategy:  Create a new collection\nactive_users = {}\nfor user, status in users.items():\n    if status == 'active':\n        active_users[user] = status"),
            ),
          ),
        ],
      ),
    );
  }
}
