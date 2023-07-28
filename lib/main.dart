import 'package:flutter/material.dart';
import 'package:marvel_app/src/comics/view/comics_page.dart';
import 'package:marvel_app/src/events/view/events_page.dart';
import 'package:marvel_app/src/home/view/character_page.dart';
import 'package:marvel_app/src/home/view/home_page.dart';
import 'package:marvel_app/src/series/view/series_page.dart';
import 'package:marvel_app/src/stories/view/stories_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/character': (context) => const CharacterPage(),
        '/stories': (context) => const StoriesPage(),
        '/series': (context) => const SeriesPage(),
        '/events': (context) => const EventsPage(),
        '/comics': (context) => const ComicsPage(),
      },
    );
  }
}
