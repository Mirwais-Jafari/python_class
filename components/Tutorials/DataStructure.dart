import "package:flutter/material.dart";

class DataStructure extends StatelessWidget {
  const DataStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Introduction to Data structures")),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(18.0),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  text:
                      "Data Structures\nThis chapter describes some things you've learned about already in more detail, and adds some new things as well.\n\n\n More on Lists\nThe list data type has some more methods. Here are all of the methods of list objects:\nlist.append(x)\nAdd an item to the end of the list. Equivalent to a[len(a):] = [x].\nlist.extend(iterable)\nExtend the list by appending all the items from the iterable. Equivalent to a[len(a):] = iterable.\nlist.insert(i, x)\nInsert an item at a given position. The first argument is the index of the element before which to insert, so a.insert(0, x) inserts at the front of the list, and a.insert(len(a), x) is equivalent to a.append(x).\nlist.remove(x)\nRemove the first item from the list whose value is equal to x. It raises a ValueError if there is no such item.\nlist.pop([i])\nRemove the item at the given position in the list, and return it. If no index is specified, a.pop() removes and returns the last item in the list. (The square brackets around the i in the method signature denote that the parameter is optional, not that you should type square brackets at that position. You will see this notation frequently in the Python Library Reference.)\nlist.clear()\nRemove all items from the list. Equivalent to del a[:].\nlist.index(x[, start[, end]])\nReturn zero-based index in the list of the first item whose value is equal to x. Raises a ValueError if there is no such item.\nThe optional arguments start and end are interpreted as in the slice notation and are used to limit the search to a particular subsequence of the list. The returned index is computed relative to the beginning of the full sequence rather than the start argument.\nlist.count(x)\nReturn the number of times x appears in the list.\nlist.sort(*, key=None, reverse=False)\nSort the items of the list in place (the arguments can be used for sort customization, see sorted() for their explanation).\nlist.reverse()\nReverse the elements of the list in place.\nlist.copy()\nReturn a shallow copy of the list. Equivalent to a[:]."),
            ),
          ),
        ],
      ),
    );
  }
}
