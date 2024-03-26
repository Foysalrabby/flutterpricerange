import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpricerange/model/moviedes.dart';

class Moviedetails extends StatefulWidget{
  final String moviename;
  final  Moviedes moviedes;

  const Moviedetails({super.key, required this.moviename,required this.moviedes});
  @override
  State<StatefulWidget> createState() => Extendmoviedetails( this.moviename,this.moviedes);

}
class Extendmoviedetails extends State<Moviedetails>{
  final String name;
  final Moviedes moviedes;
  Extendmoviedetails(this.name,this.moviedes);

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

         },child: Text("go BACK ${moviedes.Director}"),)
      ),
    ),
  );
  }

}