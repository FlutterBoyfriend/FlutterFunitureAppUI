import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "120 Products",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          Container(
              child: Row(
            children: <Widget>[
              Text(
                "Popular",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 30,
              )
            ],
          ))
        ],
      ),
    );
  }
}
