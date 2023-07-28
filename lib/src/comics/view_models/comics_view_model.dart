import 'package:flutter/material.dart';
import 'package:marvel_app/src/comics/model/comics.dart';
import 'package:marvel_app/src/core/services/client/api_client.dart';

class ComicsViewModel extends ChangeNotifier {
  final ApiService apiService = ApiService();

  List<Comic> _comics = <Comic>[];

  List<Comic> get comics => _comics;

  Future<void> fetchMarvelComics(int characterId) async {
    var result = await apiService.getComics(characterId);
    _comics = result.data?.results ?? [];
    notifyListeners();
  }
}
