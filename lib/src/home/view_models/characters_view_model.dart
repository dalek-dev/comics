import 'package:flutter/material.dart';
import 'package:marvel_app/src/core/services/client/api_client.dart';
import 'package:marvel_app/src/home/model/characters.dart';

class CharactersViewModel extends ChangeNotifier {
  final ApiService apiService = ApiService();

  List<Character> _characters = [];

  get characters => _characters;

  @override
  void onInit() {
    fetchMarvelCharacters();
  }

  Future<void> fetchMarvelCharacters() async {
    var result = await apiService.getCharacters();
    _characters = result.data?.results ?? [];
    notifyListeners();
  }
}
