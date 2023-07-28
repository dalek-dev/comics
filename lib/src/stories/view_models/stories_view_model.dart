import 'package:flutter/material.dart';
import 'package:marvel_app/src/core/services/client/api_client.dart';
import 'package:marvel_app/src/stories/model/stories.dart';

class StoriesViewModel extends ChangeNotifier {
  final ApiService apiService = ApiService();

  List<Storie> _stories = <Storie>[];

  List<Storie> get stories => _stories;

  Future<void> fetchMarvelStories(int characterId) async {
    var result = await apiService.getStories(characterId);
    _stories = result.data?.results ?? [];
    notifyListeners();
  }
}
