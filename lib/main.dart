// ignore_for_file: avoid_print, deprecated_member_use, prefer_const_constructors, avoid_function_literals_in_foreach_calls

import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 8},
        {"text": "Green", "score": 6},
        {"text": "Yellow", "score": 4}
      ]
    },
    {
      "questionText": "What's your favourite Animal?",
      "answers": [
        {"text": "Lion", "score": 10},
        {"text": "Tiger", "score": 8},
        {"text": "Elephant", "score": 6},
        {"text": "Cat", "score": 4}
      ]
    },
    {
      "questionText": "What's your favourite Programming Language?",
      "answers": [
        {"text": "Java", "score": 10},
        {"text": "Python", "score": 8},
        {"text": "Dart", "score": 6},
        {"text": "C++", "score": 4}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void control(val) {
    if (val == "Next") {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else if (val == "Prev") {
      setState(() {
        _questionIndex = _questionIndex - 1;
      });
    }
  }

  void answerQuestion1(int score) {
    // print(questionIndex);

    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {}
  }

  void answerQuestion2() {
    // questionIndex = questionIndex + 1;
    print("Answer Chosen");
    setState(() {
      _questionIndex = _questionIndex - 1;
    });
  }

  void _answerQuestion() {
    // questionIndex = questionIndex + 1;
    print("Answer Chosen");
    setState(() {
      _questionIndex = _questionIndex - 1;
    });
  }

  void _reset() {
    // questionIndex = questionIndex + 1;
    print("reset");
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, control, answerQuestion1)
            : Result(_totalScore, _reset),
      ),
    );
  }
}
