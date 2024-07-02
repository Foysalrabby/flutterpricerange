import 'package:flutter/material.dart';

class Postlist{
final List <Jsonparsingpost> posts;
Postlist({required this.posts});
factory Postlist.fromJson(List<dynamic>Parsedjson){
   // List <Jsonparsingpost> posts= new List <Jsonparsingpost>();
   // posts=Parsedjson.map((i) => Jsonparsingpost.fromJson(i)).toList();
   // return  Postlist(posts:posts);
  List <Jsonparsingpost> posts= Parsedjson.map((i) => Jsonparsingpost.fromJson(i)).toList();
  return  Postlist(posts:posts);
}
}

class Jsonparsingpost {
  int id;
  int userId;
  String title;
  String body;
  Jsonparsingpost({required this.userId, required this.id,  required this.title, required this.body});

 factory Jsonparsingpost.fromJson(Map<String, dynamic> json){
   return  Jsonparsingpost(
       userId:json['userId'],
       id:json['id'],
      title:json['title'],
      body:json['body']

   );

  }
}