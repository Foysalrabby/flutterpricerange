import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quizeapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return Extendedquize();
  }

}
class Extendedquize extends State<Quizeapp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quize App"),
        backgroundColor: Color.fromARGB(255, 223, 142, 61),
      ),
      body: Container(
        color:Color.fromARGB(255, 53, 108, 107) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );

  }

}