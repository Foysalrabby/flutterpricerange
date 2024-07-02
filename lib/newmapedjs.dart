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
           return customlistview(allpost,context);
          }else{
            return CircularProgressIndicator();
          }
        },
      ),

    ),
  );
  }

  Widget customlistview(List<Jsonparsingpost>data,BuildContext context ) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: data.length,
            itemBuilder: (context,index){
            return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Divider(height: 5.0,),
              ListTile(
                leading: CircleAvatar(
                  child: Text("${data[index].id}"),
                ),
                title: Text("${data[index].title}"),
              )
            ],
            );
        }),
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





