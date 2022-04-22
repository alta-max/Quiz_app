// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
