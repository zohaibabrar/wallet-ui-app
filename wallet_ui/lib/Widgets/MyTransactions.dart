// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyTransactions extends StatelessWidget {
  final String logoProvider;
  final String title;
  final String date;
  final double amount;
  final color;
  final logoColor;

  const MyTransactions({
    Key? key,
    required this.logoProvider,
    required this.title,
    required this.date,
    required this.amount,
    required this.color,
    required this.logoColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: SizedBox(
        width: 700,
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Logo
                Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Image.asset(
                      logoProvider,
                      color: logoColor,
                    ),
                  ),
                ),
                // Description
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        date,
                        style: const TextStyle(
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Amount
            Text(
              '- \$' + amount.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
