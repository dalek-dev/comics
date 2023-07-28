import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:marvel_app/src/comics/model/comics.dart';
import 'package:marvel_app/src/core/config/environment/env.dart';
import 'package:marvel_app/src/core/config/utils/encrypt.dart';
import 'package:marvel_app/src/core/config/utils/query_params.dart';
import 'package:marvel_app/src/events/model/events.dart';
import 'package:marvel_app/src/home/model/characters.dart';
import 'package:marvel_app/src/series/model/series.dart';
import 'package:marvel_app/src/stories/model/stories.dart';

class ApiService {
  static final ApiService _singleton = ApiService._internal();

  factory ApiService() {
    return _singleton;
  }

  ApiService._internal();

  Future<BaseResponseCharacters> getCharacters() async {
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    Map<String, dynamic> queryParams =
        queryParam(Env.publicKey, generateMd5(timestamp), timestamp);
    final uri = Uri.https(Env.baseUrl, Env.extensionUrl, queryParams);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var responseCharacters =
          BaseResponseCharacters.fromJson(json.decode(response.body));
      return responseCharacters;
    } else {
      throw Exception('Error al obtener characters');
    }
  }

  Future<BaseResponseComics> getComics(int characterId) async {
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    Map<String, dynamic> queryParams =
        queryParam(Env.publicKey, generateMd5(timestamp), timestamp);

    String characterIdString = '/$characterId';

    final uri = Uri.https(Env.baseUrl,
        Env.extensionUrl + characterIdString + Env.comicsEndpoint, queryParams);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var responseComics =
          BaseResponseComics.fromJson(json.decode(response.body));
      return responseComics;
    } else {
      throw Exception('Error al obtener comics');
    }
  }

  Future<BaseResponseEvents> getEvents(int characterId) async {
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    Map<String, dynamic> queryParams =
        queryParam(Env.publicKey, generateMd5(timestamp), timestamp);

    String characterIdString = '/$characterId';

    final uri = Uri.https(Env.baseUrl,
        Env.extensionUrl + characterIdString + Env.eventsEndpoint, queryParams);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var responseEvents =
          BaseResponseEvents.fromJson(json.decode(response.body));
      return responseEvents;
    } else {
      throw Exception('Error al obtener events');
    }
  }

  Future<BaseResponseSeries> getSeries(int characterId) async {
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    Map<String, dynamic> queryParams =
        queryParam(Env.publicKey, generateMd5(timestamp), timestamp);

    String characterIdString = '/$characterId';

    final uri = Uri.https(Env.baseUrl,
        Env.extensionUrl + characterIdString + Env.seriesEndpoint, queryParams);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var responseSeries =
          BaseResponseSeries.fromJson(json.decode(response.body));
      return responseSeries;
    } else {
      throw Exception('Error al obtener series');
    }
  }

  Future<BaseResponseStories> getStories(int characterId) async {
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    Map<String, dynamic> queryParams =
        queryParam(Env.publicKey, generateMd5(timestamp), timestamp);

    String characterIdString = '/$characterId';

    final uri = Uri.https(
        Env.baseUrl,
        Env.extensionUrl + characterIdString + Env.storiesEndpoint,
        queryParams);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var responseStories =
          BaseResponseStories.fromJson(json.decode(response.body));
      return responseStories;
    } else {
      throw Exception('Error al obtener stories');
    }
  }
}
