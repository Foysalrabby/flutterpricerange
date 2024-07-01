
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class newjsonparsing extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return extnewjsonparsing();
  }

}
class extnewjsonparsing extends State<newjsonparsing>{
  var data;
      @override
    void initState() {
      super.initState();
      // data=Networkdata("https://jsonplaceholder.typicode.com/posts").Fetchdata();
        data=getdata();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json parsing"),
        backgroundColor: Colors.greenAccent,

      ),
      body: Center(
        child: FutureBuilder(
          future: getdata(),
            builder: (context,AsyncSnapshot snapshot){

                if(snapshot.hasData) {
                  return createlistview(snapshot.data,context);
                }
                return CircularProgressIndicator();

            }

        ),
      ),


    );
  }

 Future getdata() async {
        var datas;
        String dataurl="https://jsonplaceholder.typicode.com/posts";
      Networkdata networkdata= Networkdata(dataurl);
       datas= networkdata.Fetchdata();
        return datas;
  }


  Widget createlistview(data, BuildContext context) {

       return Container(
         child: Padding(
           padding: EdgeInsets.all(8.0),
           child: ListView.builder(
             itemCount:data.length,
               itemBuilder: (context,index){

               return Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Divider(height: 7.0),
                   ListTile(
                     leading: CircleAvatar(
                         child: Text("${data[index]['id']}"),
                     ),
                     title: Text("${data[index]['title']}"),
                     subtitle: Text("${data[index]['body']}"),
                   ),

                 ],
               );
               }
           ),
         ),
       );


  }

}
class Networkdata{
final String url;
Networkdata(this.url);

Future Fetchdata() async{
  print("${url}");
  http.Response response=await http.get(Uri.parse(url));
 if(response.statusCode == 200){
   return json.decode(response.body);
 }
  else{
    print(response.statusCode);
 }
}
}
