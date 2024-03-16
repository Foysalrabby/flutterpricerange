import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tipcalculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ExtendTipcalculator();
}
class ExtendTipcalculator extends State<Tipcalculator>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TipCalulator range"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
      ),
    );

  }

}