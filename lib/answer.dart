// ignore_for_file: deprecated_member_use, prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback callback;

  Answer(this.answerText, this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          onPressed: callback,
          textColor: Colors.white,
          child: Text(answerText)),
    );
  }
}
