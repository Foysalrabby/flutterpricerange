import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pricerange extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Implepricerange();
}
class Implepricerange extends State<Pricerange>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Price range"),
      backgroundColor: Colors.amber,
    ),
    body: Container(
      color: Colors.cyan,
      child: Text("hi"),
    ),
  );
  }


}