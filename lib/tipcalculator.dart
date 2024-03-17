import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tipcalculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ExtendTipcalculator();
}
class ExtendTipcalculator extends State<Tipcalculator>{
  double billamount=0.0;
  int minimunpereson=1;
  int tipcercentage=1;

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
                   Text("Total Tipperperson", style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w700),),
                   Text("\$ ${Calculateperperson(billamount,minimunpereson,tipcercentage)}",style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w700),)
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
                ),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Split"),
                        Row(
                         children: [
                           InkWell(
                             onTap: (){
                               setState(() {
                                 if(minimunpereson >1){
                                   minimunpereson --;
                                 }else{
                                 }
                               });
                             },
                             child: Container(
                               width: 40,
                               height: 40,
                               margin: EdgeInsets.all(7),
                               decoration: BoxDecoration(
                                 color: Color.fromARGB(255, 138, 165, 152),
                                 borderRadius: BorderRadius.circular(7)
                               ),
                               child: Center(child: Text("-",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.white),)),
                             ),
                           ),
                           Text("$minimunpereson",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),),
                           InkWell(
                             onTap: (){
                               setState(() {
                                 minimunpereson ++;
                               });
                             },
                             child: Container(
                               width: 40,
                               height: 40,
                               margin: EdgeInsets.all(7),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(7),
                                 color: Color.fromARGB(255, 138, 165, 152),

                               ),
                               child: Center(child: Text("+",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),)),
                             ),
                           )
                         ],
                        )

                        
                      ],
                    ),
                    
                  ),

                  //FOR TIP
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tip"),
                        Text("\$ ${Calculatetip (billamount,minimunpereson,tipcercentage)}",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.purple) ,)

                      ],
                    ),
                  ),
                  Text("${tipcercentage}%",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.purple),),
                  Slider(
                    min: 1,
                      max: 100,
                      divisions: 10,
                      activeColor: Colors.purple,
                      inactiveColor: Colors.grey,

                      value: tipcercentage.toDouble(), onChanged: (double value){
                      setState(() {
                        tipcercentage=value.round();
                      });
                  })
                ],

              ),

            )

          ],
        ),
      ),
    );

  }
  //total tip per person

  Calculateperperson( double billamount, int splitby,int tipercentage){
    double totalperpersonbill=(Calculatetip(billamount, splitby, tipercentage)+billamount)/splitby;
    return totalperpersonbill;



  }
  //call the method for tip
  Calculatetip (double billamount,int splitby,int tipercentage){
    double totaltip=0.0;
    if(billamount < 0 || billamount.toString().isEmpty || billamount == null){
      //not go
    }
    else{
      totaltip=(billamount*tipercentage)/100;
    }
   return totaltip;

  }

}