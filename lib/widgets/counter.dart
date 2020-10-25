import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
      width: 130,
      height: 50,
      child: Row(
        children: <Widget>[
          counter("-"),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "2",
              style: TextStyle(fontSize: 35),
            ),
          ),
          counter("+")
        ],
      ),
    );
  }

  Widget counter(String btntext) {
    return InkWell(
      child: Container(
        child: Text(
          btntext,
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}
