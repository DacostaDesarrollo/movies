import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Populares',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ))),
          SizedBox(
            height: 5,
          ),
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (_, index) => const _MoviePoster(),
          ))
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'details',
              arguments: 'movie-instance'),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/300x400'),
              width: 130,
              height: 190,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Starwars: El restorno del rey',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
