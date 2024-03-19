import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Moviedetails extends StatefulWidget{
  final String moviename;
  const Moviedetails({super.key, required this.moviename});
  @override
  State<StatefulWidget> createState() => Extendmoviedetails( this.moviename);

}
class Extendmoviedetails extends State<Moviedetails>{
  final String name;
  Extendmoviedetails(this.name);

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

         },child: Text("go BACK ${name}"),)
      ),
    ),
  );
  }

}