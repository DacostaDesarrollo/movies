import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '605f8c42c77034bea029c70fdcf17660';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  MoviesProvider() {
    print('MoviesPorvider inicializado');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(this._baseUrl, '/3/discover/movie',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});

    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

    print(nowPlayingResponse.results[0].title);
  }
}
