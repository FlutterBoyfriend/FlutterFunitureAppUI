import 'package:flutter/material.dart';
import 'package:sdfgsfh/models/info_model.dart';
import 'package:sdfgsfh/widgets/add_cartButton.dart';
import 'package:sdfgsfh/widgets/color_picker.dart';
import 'package:sdfgsfh/widgets/counter.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: itemsList2.length,
        itemBuilder: (_, int index) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.blueGrey.shade100,
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
                IconButton(icon: Icon(Icons.menu), onPressed: () {})
              ],
              iconTheme: IconThemeData(color: Colors.black),
            ),
            backgroundColor: Colors.blueGrey.shade100,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 220,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Image.asset(itemsList2[index].imgUrl),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  itemsList2[index].name,
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  itemsList2[index].description,
                                  style: TextStyle(color: Colors.black38),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                  child: Text(itemsList2[index].infomation),
                                ),
                                // Container(
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Size:",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 5, 0, 0),
                                          child: Text(
                                            itemsList2[index].size,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          "Treatment",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            itemsList2[index].treatment,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[ColorP(), Counter()],
                          ),
                        ),
                        Spacer(),
                        AddCart()
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
