import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Moviedetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Extendmoviedetails();

}
class Extendmoviedetails extends State<Moviedetails>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Details Page"),
      backgroundColor: Colors.amberAccent,
    ),
    body: Center(
      child: Container(
         child: ElevatedButton(onPressed: (){

         },child: Text("go BACK"),)
      ),
    ),
  );
  }

}