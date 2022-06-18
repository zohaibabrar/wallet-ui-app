// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final int number;
  final double balance;
  final color;

  const MyCard({
    Key? key,
    required this.number,
    required this.balance,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/visa.png',
                    height: 50,
                  ),
                  Text(
                    '***' + number.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Balance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '\$' + balance.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 27,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
