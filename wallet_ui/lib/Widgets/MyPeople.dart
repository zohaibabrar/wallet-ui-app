// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class MyPeople extends StatelessWidget {
  String imageProvider;
  MyPeople({Key? key, required this.imageProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 50,
        height: 50,
        child: CircleAvatar(
          backgroundImage: AssetImage(imageProvider),
        ),
      ),
    );
  }
}
