import "package:flutter/material.dart";

class CodeIt extends StatelessWidget {
  const CodeIt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome to coding part")),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(18.0),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  text:
                      "Calculating a Percentage \nIf you are writing a program that works with a percentage, you have to make sure that the percentage's decimal point is in the correct location before doing any math with the percentage. This is especially true when the user enters a percentage as input. Most users enter the number 50 to mean 50 percent, 20 to mean 20 percent, and so forth. Before you perform any calculations with such a percentage, you have to divide it by 100 to move its decimal point two places to the left.\nLet's step through the process of writing a program that calculates a percentage. Suppose a retail business is planning to have a storewide sale where the prices of all items will be 20 percent off. We have been asked to write a program to calculate the sale price of an item after the discount is subtracted. Here is the algorithm:\n1. Get the original price of the item.\n2. Calculate 20 percent of the original price. This is the amount of the discount.\n3. Subtract the discount from the original price. This is the sale price.\n4. Display the sale price.\nIn step 1, we get the original price of the item. We will prompt the user to enter this data on the keyboard. In our program we will use the following statement to do this. Notice the value entered by the user will be stored in a variable named original_price.\noriginal_price = float(input(\"Enter the item's original price: \"))\nIn step 2, we calculate the amount of the discount. To do this, we multiply the original price by 20 percent. The following statement performs this calculation and assigns the result to the discount variable:\ndiscount = original_price * 0.2 \nIn step 3, we subtract the discount from the original price. The following statement does this calculation and stores the result in the sale_price variable: \nsale_price = original_price - discount Last, in step 4, we will use the following statement to display the sale price: \nprint('The sale price is', sale_price) \nProgram 2-15 shows the entire program, with example output"),
            ),
          ),
        ],
      ),
    );
  }
}
