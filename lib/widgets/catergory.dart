import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  int selectedIndex = 0;
  List<String> _category = [
    "Chairs",
    "Tables",
    "Sofa",
    "Beds",
    "Toilet",
    "Curtains"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _category.length,
          itemBuilder: (_, int index) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                _category[index],
                style: TextStyle(
                    color: selectedIndex == index ? Colors.black : Colors.grey,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
            );
          }),
    );
  }
}
