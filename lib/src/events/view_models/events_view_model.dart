import 'package:flutter/material.dart';
import 'package:marvel_app/src/core/services/client/api_client.dart';
import 'package:marvel_app/src/events/model/events.dart';

class EventsViewModel extends ChangeNotifier {
  final ApiService apiService = ApiService();

  List<Event> _events = <Event>[];

  List<Event> get events => _events;

  Future<void> fetchMarvelEvent(int characterId) async {
    var result = await apiService.getEvents(characterId);
    _events = result.data?.results ?? [];
    notifyListeners();
  }
}
