import 'package:flutter/material.dart';
import 'package:marvel_app/src/core/widgets/color_filtered.dart';
import 'package:marvel_app/src/home/model/characters.dart';
import 'package:marvel_app/src/home/view_models/characters_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (_) => CharactersViewModel()..onInit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Marvel',
            style: TextStyle(
                fontFamily: 'Marvel', fontSize: 60, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF202020),
        ),
        backgroundColor: const Color(0xFF202020),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Center(
              child: Consumer<CharactersViewModel>(
                builder: (context, model, child) {
                  if (model.characters.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    return SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Wrap(
                            spacing: 16,
                            runSpacing: 16,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.horizontal,
                            children:
                                List.generate(model.characters.length, (index) {
                              return Container(
                                height: size.height * 0.3,
                                width: size.width * 0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 5,
                                    )),
                                child: ComicPhoto(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/character',
                                          arguments: model.characters[index]);
                                    },
                                    description:
                                        model.characters[index].name ?? '',
                                    thumbnail:
                                        model.characters[index].thumbnail ??
                                            Thumbnail.empty()),
                              );
                            })));
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
