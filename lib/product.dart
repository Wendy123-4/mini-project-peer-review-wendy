import 'package:flutter/material.dart';


class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.price ,this.discount, this.image})
      : super(key: key);
  final String name;
  final String price;
  final String discount;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image(image: NetworkImage(image),),
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.all(5),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(this.name,
                                  style: TextStyle(fontWeight:
                                  FontWeight.bold)),
                              Text("Price: " + this.price.toString(),
                                  style: TextStyle(fontStyle: FontStyle.italic)),
                              Text("Discount: " + this.discount,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xfff57c00),
                                  fontFamily: 'RaleWay',
                                  fontSize: 18)),

                            ],
                          )))
                ])));
  }
}