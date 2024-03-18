import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quizeapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return Extendedquize();
  }

}
class Extendedquize extends State<Quizeapp>{

  List quizebank=[
    "The capital of Bangladesh is Dhaka",
    "The national flower of Bangladesh is the rose.",
    "The Sundarbans, located in Bangladesh, is the largest mangrove forest in the world",
    "Bengali (Bangla) is the only official language of Bangladesh",
    "Bangladesh shares its longest border with  mayenmar",
    "The traditional musical instrument tabla is commonly used in Bangladeshi music",
    "Bangladesh was formerly known as East Pakistan before gaining independence",
    "The official religion of Bangladesh is Hinduism"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quize App"),
        backgroundColor: Color.fromARGB(255, 223, 142, 61),
      ),
      body: Container(
       width:double.infinity ,
        color:Color.fromARGB(255, 53, 108, 107) ,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
               Image.asset("assets/images/hockeypic.jpg"),
              SizedBox(height: 10,),
              Container(
                child: Text("${quizebank[4]}",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300,fontSize: 20),),
              ),
              Spacer(), //to remove space in top
            ],
          ),
        ),
      ),
    );

  }

}