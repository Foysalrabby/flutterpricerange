import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpricerange/model/moviedes.dart';

class Moviedetails extends StatefulWidget{
  final String moviename;
  final  Moviedes moviedes;

  const Moviedetails({super.key, required this.moviename,required this.moviedes});
  @override
  State<StatefulWidget> createState() => Extendmoviedetails( this.moviename,this.moviedes);

}
class Extendmoviedetails extends State<Moviedetails>{
  final String name;
  final Moviedes moviedes;
  Extendmoviedetails(this.name,this.moviedes);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Details Page"),
      backgroundColor: Colors.amberAccent,
    ),
    body:ListView(
      children: [
           Moviethumbail("${moviedes.Images[0]}"),
        MovieDetailsheaderposter(moviedes: moviedes,),
         SizedBox(height: 10.0,),
         MovieImageshow(posterimag: moviedes.Images,)
      ],
    )

  );
  }

}

class Moviethumbail extends StatelessWidget{
  final String thumbailimg;
  Moviethumbail(this.thumbailimg);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
             Container(
                width: MediaQuery.of(context).size.width,
               height: 120.0,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: NetworkImage(thumbailimg ?? "https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F0%2F0c%2FHSTU_Logo.png&tbnid=n3ZD6a9w20ippM&vet=12ahUKEwif4sjC55KFAxVGxjgGHeOJBnsQMygAegQIARBF..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FHajee_Mohammad_Danesh_Science_%2526_Technology_University&docid=8kXougSNtRSqZM&w=280&h=356&q=hstu%20saad&ved=2ahUKEwif4sjC55KFAxVGxjgGHeOJBnsQMygAegQIARBF"),
                   fit: BoxFit.cover
                 )
               ),
             ),
            Icon(Icons.play_circle_fill, size: 40, color: Colors.white,)
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.amberAccent,Colors.white70],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),
          height: 30,
        )
      ],

    );
  }

}


//for image niche extra info
 class MovieDetailsheaderposter extends StatelessWidget{
  final Moviedes moviedes;

  const MovieDetailsheaderposter({super.key, required this.moviedes});

  @override
  Widget build(BuildContext context) {
   return  Padding(
       padding: EdgeInsets.all(15.0),

        child: Row(
          children: [
            Headerposter(movieposter: moviedes.Images[0].toString(),),
            SizedBox(width: 10.0,),
            Expanded(child:LeftHeaderposter(moviedes: moviedes,)),


          ],
        ),

   );
  }

 }



class Headerposter extends StatelessWidget{

   final String movieposter;

  const Headerposter({super.key, required this.movieposter});

  @override
  Widget build(BuildContext context) {
         return Card(
             child: ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(12)),
               child: Container(
                 width: MediaQuery.of(context).size.width /4,
                 height: 130.0,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image:NetworkImage(movieposter),
                     fit: BoxFit.cover
                   )
                 ),
               ),
             ),
         );
  }

}

//LeftHeaderposter

class LeftHeaderposter extends StatelessWidget{
   final Moviedes moviedes;

  const LeftHeaderposter({super.key, required this.moviedes});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

         Text(
            "${moviedes.Year} .${moviedes.Genre}".toUpperCase(),
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
         RichText(
           text: TextSpan(
             style: TextStyle(
               color: Colors.grey, fontSize: 13.0
             ),
             children:  <TextSpan>[
               TextSpan(text: "${moviedes.Plot}"),
               TextSpan(text: "More ..",style: TextStyle(color: Colors.indigo))
             ]
           ),
         )


      ],
    );

  }

}

//horizontaly show mive scrollview

class MovieImageshow extends StatelessWidget{
  final List <String> posterimag;
  const MovieImageshow({super.key, required this.posterimag});

  @override
  Widget build(BuildContext context) {
         return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("More Picture"),
           ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=> ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Container(
                      width: MediaQuery.of(context).size.width /4,
                      height: 130.0,
                      decoration: BoxDecoration(
                      image: DecorationImage(
                      image:NetworkImage(posterimag[index]),
                      fit: BoxFit.cover
                      )
                      ),
                      ),
                      ),
               separatorBuilder:(context,index)=> SizedBox(width: 6,) ,
              itemCount: posterimag.length)


            ]
         );

  }
}