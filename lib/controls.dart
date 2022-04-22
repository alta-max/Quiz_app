// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";

class Controls extends StatelessWidget {
  final String prev;
  final String next;
  final Function callback;

  Controls(this.prev, this.next, this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(child: Text(prev), onPressed: () => callback("Prev")),
          RaisedButton(child: Text(next), onPressed: () => callback("Next")),
        ],
      ),
    );
  }
}
