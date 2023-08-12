import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Movie {
  final String title;
  final int year;
  final double rating;
  final String poster;

  Movie({required this.title, required this.year, required this.rating, required this.poster});
}

class MyApp extends StatelessWidget {
  final List<Movie> favoriteMovies = [
    Movie(
      title: 'Shang-Chi',
      year: 2021,
      rating: 8.8,
      poster: 'https://cinemags.org/wp-content/uploads/2021/04/EzVqwiaVoAIAv-E.jpg',
    ),
    Movie(
      title: 'Rampage',
      year: 2018,
      rating: 9.3,
      poster: 'https://i.ebayimg.com/images/g/9rgAAOSwew5a42US/s-l1600.jpg',
    ),
    Movie(
      title: 'Spider-Man',
      year: 2021,
      rating: 9.0,
      poster: 'https://cdn1-production-images-kly.akamaized.net/Dlxa3oF5R6V6HaKf34B4xEqvT6A=/800x1066/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3635478/original/025116000_1637133546-253154135_2120128131476179_3401639978712735642_n.jpg',
    ),
    Movie(
      title: 'Venom',
      year: 2018,
      rating: 8.6,
      poster: 'https://cdn.idntimes.com/content-images/duniaku/post/20210922/venom-2-poster-tom-hardy-7c2075740285744cc52c7646d1230ffb.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Favorite Movies'),
        ),
        body: ListView.builder(
          itemCount: favoriteMovies.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Image.network(
                  favoriteMovies[index].poster,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  favoriteMovies[index].title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Year: ${favoriteMovies[index].year}'),
                    Text('Rating: ${favoriteMovies[index].rating.toString()}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
