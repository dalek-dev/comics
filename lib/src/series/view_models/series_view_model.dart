import 'package:flutter/material.dart';
import 'package:marvel_app/src/core/services/client/api_client.dart';
import 'package:marvel_app/src/series/model/series.dart';

class SeriesViewModel extends ChangeNotifier {
  final ApiService apiService = ApiService();

  List<Serie> _series = <Serie>[];

  List<Serie> get series => _series;

  Future<void> fetchMarvelSeries(int characterId) async {
    var result = await apiService.getSeries(characterId);
    _series = result.data?.results ?? [];
    notifyListeners();
  }
}
