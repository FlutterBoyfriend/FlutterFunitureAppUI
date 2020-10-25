import 'package:flutter/material.dart';
import 'package:sdfgsfh/widgets/catergory.dart';
import 'package:sdfgsfh/widgets/items.dart';
import 'package:sdfgsfh/widgets/popular.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey.shade100,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          IconButton(icon: Icon(Icons.menu), onPressed: () {})
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.blueGrey.shade100,
      body: Container(
        child: Column(
          children: <Widget>[
            CategoryItem(),
            Popular(),
            Expanded(child: Items())
          ],
        ),
      ),
    );
  }
}
