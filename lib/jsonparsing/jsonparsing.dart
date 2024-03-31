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
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Json Parsing",),
       backgroundColor:Colors.deepOrangeAccent
     ),
   );
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
      print(response.body);
      return response.body;
      
    }
       else{

         print(response.statusCode);
    }

  }
}