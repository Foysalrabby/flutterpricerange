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
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1), //to height noujayi set hobe
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          children: [
             Container(
               width: 300,
               height: 160,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(20)),
                 color: Colors.purpleAccent.shade100,
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Total person", style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w700),),
                   Text("\$123",style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w700),)
                 ],
               ),
             ),
            
          ],
        ),
      ),
    );

  }

}