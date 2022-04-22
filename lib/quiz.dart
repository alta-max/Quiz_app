import 'package:first_app/answer.dart';
import 'package:first_app/controls.dart';
import 'package:first_app/question.dart';
import "package:flutter/material.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int _questionIndex;
  final Function control;
  final Function answerQuestion1;

  Quiz(this.questions, this._questionIndex, this.control, this.answerQuestion1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[_questionIndex]["questionText"] as String),
        ...(questions[_questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) => Answer(answer['text'] as String,
                () => answerQuestion1(answer["score"])))
            .toList(),
        Controls("Prev", "Next", control)
      ],
    );
  }
}
 

 //The argument type 'Object?' can't be assigned to the parameter type 'String'. Put as String