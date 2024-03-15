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
        child: SingleChildScrollView(
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
               ),

                SizedBox(
                  height: 50.0, 
                ),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter, //for to center getavator
                    children: [
                        getcards(),
                      getavator()
                    ],
                  ),
                )

              ],
          ),
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
 //create containe method
 Container getcards() {
    return Container(
      width: 300,
      height: 250,
      margin: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("name"),
          Text("age"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.man),
              Text("rabbi4423@gaml.com")
            ],
          )
        ],

      ),
    );
 }
 //getavator and move
Container getavator(){
   return Container(
      width: 100,
     height: 100,
   
    decoration: BoxDecoration(
      color:Colors.deepOrange,
      borderRadius: BorderRadius.all(Radius.circular(50)),
      border: Border.all(color: Colors.white,width: 1.2),
      image: DecorationImage(image: NetworkImage("https://picsum.photos/300/300"), //to online image
      fit: BoxFit.cover)
    ),
   ) ;
}

}