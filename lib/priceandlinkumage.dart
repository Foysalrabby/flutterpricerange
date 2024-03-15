import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pricerange extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Implepricerange();
}
class Implepricerange extends State<Pricerange>{
  static int indexi=0;
  List quote=[
    "a","b","c","d","e","f","g","h","i",
  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Price range"),
      backgroundColor: Colors.amber,
    ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
              Container(
                width: 300.0,
                height: 300.0,
                child: Center(child: Text(quote[indexi%quote.length]), //to use % to get 1 postion or index
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.deepOrangeAccent,
                ),
              ),
             SizedBox(
               height: 10.0,
             ),

             MaterialButton(onPressed: qouteget,

               child: Text("Click to"),
               color: Colors.yellow,
             )
            ],
        ),
      ),
    ),
  );
  }



  void qouteget() {
    setState(() {
      indexi += 1;
    });
  }
}