import 'dart:ffi';
class Moviedes{

  static List <Moviedes> getmovies() => [

   //new Moviedes(Title, Year, Rated, Released, Runtime, Genre, Director,
  // Writer, Actors, Plot, Language, Country, Awards, Poster, Metascore,
  // imdbRating, imdbVotes, Type, imdbID, Response, Images); // create object

  Moviedes(
  "Avatar",
  "2009",
  "PG-13",
  "18 Dec 2009",
  "162 min",
  "Action, Adventure, Fantasy",
  "James Cameron",
  "James Cameron",
  "Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang",
  "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
  "English, Spanish",
  "USA, UK",
  "Won 3 Oscars. Another 80 wins & 121 nominations.",
  "http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg",
  "83",
  "7.9",
  "890,617",
  "tt0499549",
  "movie",
  "True",
  [
  "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
  "https://images-na.ssl-images-amazon.com/images/M/MV5BNzM2MDk3MTcyMV5BMl5BanBnXkFtZTcwNjg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY2ODQ3NjMyMl5BMl5BanBnXkFtZTcwODg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxOTEwNDcxN15BMl5BanBnXkFtZTcwOTg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
  "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxMDg1Nzk1MV5BMl5BanBnXkFtZTcwMDk0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg"
  ]
      ),

    Moviedes(
        "I Am Legend",
        "2007",
        "PG-13",
        "14 Dec 2007",
        "162 min",
        "Action, Adventure, Fantasy",
        "James Cameron",
        "James Cameron",
        "Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang",
        "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
        "English, Spanish",
        "USA, UK",
        "Won 3 Oscars. Another 80 wins & 121 nominations.",
        "http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg",
        "83",
        "7.9",
        "890,617",
        "tt0499549",
        "movie",
        "True",
        [
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
        ]
    ),

    Moviedes(
        "The Avengers",
        "2012",
        "PG-13",
        "04 May 2012",
        "143 min",
        "Action, Sci-Fi, Thriller",
        "Joss Whedon",
        "Joss Whedon (screenplay), Zak Penn (story), Joss Whedon (story)",
        "Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth",
        "Earth's mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.",
        "English, Russian",
        "USA",
        "Nominated for 1 Oscar. Another 34 wins & 75 nominations.",
        "http://ia.media-imdb.com/images/M/MV5BMTk2NTI1MTU4N15BMl5BanBnXkFtZTcwODg0OTY0Nw@@._V1_SX300.jpg",
        "69",
        "8.1",
        "1,003,301",
        "tt0848228",
        "movie",
        "True",
        [
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0NjY0NzE4OTReQTJeQWpwZ15BbWU3MDczODg2Nzc@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjE1MzEzMjcyM15BMl5BanBnXkFtZTcwNDM4ODY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjMwMzM2MTg1M15BMl5BanBnXkFtZTcwNjM4ODY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ4NzM2Mjc5MV5BMl5BanBnXkFtZTcwMTkwOTY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc3MzQ3NjA5N15BMl5BanBnXkFtZTcwMzY5OTY3Nw@@._V1_SX1777_CR0,0,1777,999_AL_.jpg"
        ]
    ),
    Moviedes(
        "Lig of legend",
        "2019",
        "PG-13",
        "18 Dec 2009",
        "162 min",
        "Action, Adventure, Fantasy",
        "James Cameron",
        "James Cameron",
        "Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang",
        "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
        "English, Spanish",
        "USA, UK",
        "Won 3 Oscars. Another 80 wins & 121 nominations.",
        "http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg",
        "83",
        "7.9",
        "890,617",
        "tt0499549",
        "movie",
        "True",
        [
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BNzM2MDk3MTcyMV5BMl5BanBnXkFtZTcwNjg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY2ODQ3NjMyMl5BMl5BanBnXkFtZTcwODg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxOTEwNDcxN15BMl5BanBnXkFtZTcwOTg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxMDg1Nzk1MV5BMl5BanBnXkFtZTcwMDk0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg"
        ]
    ),
    Moviedes(
        "Captin",
        "2009",
        "PG-13",
        "18 Dec 2009",
        "162 min",
        "Action, Adventure, Fantasy",
        "James Cameron",
        "James Cameron",
        "Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang",
        "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
        "English, Spanish",
        "USA, UK",
        "Won 3 Oscars. Another 80 wins & 121 nominations.",
        "http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg",
        "83",
        "7.9",
        "890,617",
        "tt0499549",
        "movie",
        "True",
        [
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BNzM2MDk3MTcyMV5BMl5BanBnXkFtZTcwNjg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY2ODQ3NjMyMl5BMl5BanBnXkFtZTcwODg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxOTEwNDcxN15BMl5BanBnXkFtZTcwOTg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
          "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxMDg1Nzk1MV5BMl5BanBnXkFtZTcwMDk0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg"
        ]
    ),
  ];

  String Title;
  String Year ;
  String Rated;
  String Released;
  String Runtime;
  String Genre;
  String Director;
  String Writer;
  String Actors;
  String Plot;
  String Language;
  String Country;
  String Awards;
  String Poster;
  String Metascore;
  String imdbRating;
  String imdbVotes;
  String Type;
  String imdbID;
  String Response;
  List <String> Images;


  Moviedes(this.Title, this.Year, this.Rated, this.Released, this.Runtime, this.Genre, this.Director,
      this.Writer, this.Actors, this.Plot, this.Language, this.Country, this.Awards, this.Poster,
      this.Metascore, this.imdbRating, this.imdbVotes, this.Type, this.imdbID, this.Response, this.Images);
}