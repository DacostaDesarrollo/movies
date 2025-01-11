import 'package:flutter/material.dart';
import 'package:movies/providers/movies_provider.dart';
import 'package:movies/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Películas en cines'),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_off_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            //Tarjetas principales
            CardSwiper(movies: moviesProvider.onDisplayMovies),
            //slider de peliculas
            MovieSlider(movies: moviesProvider.popularMovies),
          ]),
        ));
  }
}
