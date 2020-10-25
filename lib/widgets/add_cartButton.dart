import 'package:flutter/material.dart';

class AddCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        color: Colors.yellowAccent,
        height: 50,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Add to cart"),
              Icon(Icons.add_shopping_cart)
            ],
          ),
        ),
      ),
    );
  }
}
