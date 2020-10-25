import 'package:flutter/material.dart';

import 'package:sdfgsfh/models/items_models.dart';
import 'package:sdfgsfh/screens/item_info.dart';

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(1),
      itemCount: itemsList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          // crossAxisSpacing: ,
          mainAxisSpacing: 15),
      itemBuilder: (_, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return InfoPage();
            }));
          },
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 6, 3, 3),
                child: Container(
                  // height: 100,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          itemsList[index].imgUrl,
                          height: 110,
                          width: 150,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              itemsList[index].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                              itemsList[index].description,
                              style: TextStyle(color: Colors.grey),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                              child: Text(
                                "\$${itemsList[index].price}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(116, 180, 0, 0),
                child: Container(
                  height: 35,
                  width: 40,
                  color: Colors.yellowAccent,
                  child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.add_shopping_cart),
                      onPressed: () {}),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
