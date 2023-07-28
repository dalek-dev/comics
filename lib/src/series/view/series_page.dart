import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:marvel_app/src/core/widgets/color_filtered.dart';
import 'package:marvel_app/src/home/model/characters.dart';
import 'package:marvel_app/src/series/view_models/series_view_model.dart';
import 'package:provider/provider.dart';

class SeriesPage extends StatelessWidget {
  const SeriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Character;

    final size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (_) => SeriesViewModel()..fetchMarvelSeries(arguments.id ?? 0),
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
                      fontFamily: 'Marvel', fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.12,
              left: size.width * 0.07,
              right: size.width * 0.07,
              bottom: size.height * 0.04,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Consumer<SeriesViewModel>(
                    builder: (context, model, child) {
                      if (model.series.isEmpty) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Wrap(
                                  spacing: 16,
                                  runSpacing: 16,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  direction: Axis.horizontal,
                                  children: List.generate(model.series.length,
                                      (index) {
                                    return Container(
                                      height: size.height * 0.28,
                                      width: size.width * 0.385,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 5,
                                          )),
                                      child: ComicPhoto(
                                          onTap: () {},
                                          description:
                                              model.series[index].title ?? '',
                                          thumbnail: Thumbnail(
                                              extension: model.series[index]
                                                      .thumbnail?.extension ??
                                                  '',
                                              path: model.series[index]
                                                      .thumbnail?.path ??
                                                  '')),
                                    );
                                  }))),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
