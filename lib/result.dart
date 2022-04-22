// ignore_for_file: prefer_const_constructors, deprecated_member_use

import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText = "You are awesome";
    } else if (resultScore <= 20) {
      resultText = "You are awesome too";
    } else if (resultScore <= 25) {
      resultText = "You are awesome three";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            onPressed: reset,
            child: Text(
              "Play Again",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
    // return Center(
    //   child: Text(
    //     resultPhrase,
    //     style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    //   ),
    // );
  }
}
