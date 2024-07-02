import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterpricerange/jsonparsing/jsonparsingmap.dart';
import 'package:http/http.dart' as http;

class Mappingjsonparsingdart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return Extendedmappigjson();
  }


}
class Extendedmappigjson extends State <Mappingjsonparsingdart> {
   late Future<Postlist> data;
  @override
  void initState() {
    super.initState();
    Networkdata networkdata=Networkdata("https://jsonplaceholder.typicode.com/posts");
    data=networkdata.Fetchdata();

  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Podo"),
      backgroundColor: Colors.redAccent,
    ),
    body: Center(
      child: FutureBuilder<Postlist>(
        future: data,
        builder: (context,AsyncSnapshot snapshot){
          List <Jsonparsingpost> allpost;
          if(snapshot.hasData){
            allpost=snapshot.data.posts;
           return Text("${allpost[0].title}");
          }else{
            return CircularProgressIndicator();
          }
        },
      ),

    ),
  );
  }

}

class Networkdata{
   String url;
   Networkdata(this.url);

   Future <Postlist> Fetchdata() async{
     final response= await http.get(Uri.parse(url));
     if(response.statusCode==200){
       return Postlist.fromJson(json.decode(response.body));
     }
     else{
       throw Exception("failed to get post");
     }

   }

}





