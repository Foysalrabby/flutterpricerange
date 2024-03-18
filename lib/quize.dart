import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpricerange/model/questionbank.dart';

class Quizeapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return Extendedquize();
  }

}
class Extendedquize extends State<Quizeapp>{
   int currentindex=0;
  List quizebank=[
    questiones.name("The capital of Bangladesh is Dhaka",true),
    questiones.name("The national flower of Bangladesh is the rose.",false),
    questiones.name("The Sundarbans, located in Bangladesh, is the largest mangrove forest in the world",true),
    questiones.name("Bengali (Bangla) is the only official language of Bangladesh",true),
    questiones.name("Bangladesh shares its longest border with  mayenmar",false),
    questiones.name("The traditional musical instrument tabla is commonly used in Bangladeshi music",true),
    questiones.name("Bangladesh was formerly known as East Pakistan before gaining independenc",true),
    questiones.name("The official religion of Bangladesh is Hinduism",false),

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
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
               Image.asset("assets/images/hockeypic.jpg"),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,style: BorderStyle.solid
                    ),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text("${quizebank[currentindex%quizebank.length].questuion}",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300,fontSize: 20),),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 ElevatedButton(onPressed: ()=> checkanser(true),
                     child: Text("True")
                 ),
                  ElevatedButton(onPressed: ()=> checkanser(false),

                      child: Text("False")),
                  ElevatedButton(onPressed: ()=> nextquestuion(),
                      child: Icon(Icons.arrow_forward))
                ],
              ),
              Spacer(), //to remove space in top
            ],
          ),
        ),
      ),
    );

  }

  checkanser(bool userchoice) {
  setState(() {
    if( userchoice == quizebank[currentindex].iscorrect){
     final scankbar= SnackBar(
       backgroundColor: Colors.green,
         duration: Duration(microseconds: 2000),
         content: Text("corrected")
     );
        ScaffoldMessenger.of(context).showSnackBar(scankbar);
    }
    else{
      final scankbar= SnackBar(
        backgroundColor: Colors.redAccent,
        duration: Duration(microseconds: 2000),
        content: Text("Incorrected"),
      );
      ScaffoldMessenger.of(context).showSnackBar(scankbar);
    }

  });
  }

  nextquestuion() {
    setState(() {
      currentindex ++;
    });
  }

}