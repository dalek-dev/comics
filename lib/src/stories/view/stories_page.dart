import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:marvel_app/src/home/model/characters.dart';
import 'package:marvel_app/src/stories/view_models/stories_view_model.dart';
import 'package:provider/provider.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Character;

    final size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (_) => StoriesViewModel()..fetchMarvelStories(arguments.id ?? 0),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        '${arguments.thumbnail?.path}.${arguments.thumbnail?.extension}'),
                    fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 7.0,
                  sigmaY: 7.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.0),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 40,
              left: 10,
              child: BackButton(
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 25,
              left: size.width * 0.17,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                constraints: BoxConstraints(maxWidth: size.width * 0.8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  arguments.name ?? '',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontFamily: 'Marvel', fontSize: 43, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.15,
              left: size.width * 0.07,
              right: size.width * 0.07,
              bottom: size.height * 0.04,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                constraints: BoxConstraints(maxWidth: size.width * 0.8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Consumer<StoriesViewModel>(
                  builder: (context, model, child) {
                    if (model.stories.isEmpty) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: model.stories.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: const Icon(
                              Icons.book,
                              color: Colors.white,
                            ),
                            title: Text(
                              model.stories[index].title ?? '',
                              style: const TextStyle(
                                  fontFamily: 'Marvel',
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          );
                        },
                        shrinkWrap: true,
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
