import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpricerange/model/moviedes.dart';
import 'package:flutterpricerange/moviedetails.dart';

class Movieclass extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ExtendMovieclss();
  }

}
class ExtendMovieclss extends State<Movieclass>{

   final List<Moviedes> movielist= Moviedes.getmovies();
  List moviename=[
    " A Space Odyssey hero",
    "The Godfather",
    "Citizen Kane",
    "Jeanne Dielman",
    "Raiders of",
    "La Dolce Vita",
    "Seven Samurai",
    "In the Mood love"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie home"),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: movielist.length,
            itemBuilder: (BuildContext context,int index){
              return  Card(
                   child: ListTile(
                     leading: CircleAvatar(
                       child: Text("H"),
                     ),
                     title: Text("${movielist[index].Title}"),
                     onTap: () => listmethod(index),

                   ),
              );
            }
        ),
      ),
    );

  }

   listmethod(int index) {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Moviedetails(moviename: "${movielist.elementAt(index).Title}")));
    });
  }

}
