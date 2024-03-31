import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Jsonparsing extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ExtendJsonparding();
  }

}
class ExtendJsonparding extends  State<Jsonparsing>{
var data;
  @override
  void initState() {
    super.initState();
    data=getdata();
    //data=Networkdata("https://jsonplaceholder.typicode.com/posts").fetchData(); //ai vabe lekha jai
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Json Parsing",),
       backgroundColor:Colors.deepOrangeAccent
     ),
     body: Center(
       child: FutureBuilder(
         future: getdata(),
         builder: (context,AsyncSnapshot snapshot){
              if(snapshot.hasData) {
                return Text(snapshot.data[0]['title']);
              }
              return CircularProgressIndicator();

              },

       ),
     ),
   );
  }
  // metthod or function get data
  Future getdata() async {
    var data;
    String urls="https://jsonplaceholder.typicode.com/posts";
    Networkdata networkdata= Networkdata(urls);
    data=networkdata.fetchData();
    // data.then((values) {
    //  print(values[0]["title"]);
    // });

    return data;


  }

}
class Networkdata{
  final String url;
  Networkdata(this.url);

  Future fetchData() async{
    print("$url");
    //Response response=await Uri get(Uri.encodeFull(url));
    http.Response response= await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      // print(response.body[0]);
      return json.decode(response.body);
      
    }
       else{

         print(response.statusCode);
    }

  }
}