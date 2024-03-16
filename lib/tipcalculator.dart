import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tipcalculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ExtendTipcalculator();
}
class ExtendTipcalculator extends State<Tipcalculator>{
  double billamount=0.0;
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
                 color:   Color.fromARGB(255, 214, 183, 216),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Total person", style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w700),),
                   Text("\$123",style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w700),)
                 ],
               ),
             ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(255, 151, 149, 148),
                  style: BorderStyle.solid
                ),
                borderRadius: BorderRadius.circular(20)
              ),

              child: Column(

                children: [
                TextField(
                  keyboardType:TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    hintText: "Bill Amount",
                    prefix: Icon(Icons.money_off_csred,color: Colors.grey, size: 20,)
                  ),
                    onChanged: (String value){
                    try{
                          billamount=double.parse(value); //to take input fielad value to double store billamount
                    }catch(error){
                       billamount =0.0;
                    }

                    },
                )
                ],
              ),
            )

          ],
        ),
      ),
    );

  }

}