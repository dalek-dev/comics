import 'package:flutter/material.dart';
import 'package:marvel_app/src/core/widgets/marvel_default_button.dart';
import 'package:marvel_app/src/home/model/characters.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Character;
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
          ),
          const Positioned(
            top: 40,
            left: 10,
            child: BackButton(
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 20,
            left: size.width * 0.3,
            child: const Text(
              'Marvel',
              style: TextStyle(
                  fontFamily: 'Marvel', fontSize: 60, color: Colors.white),
            ),
          ),
          Positioned(
              bottom: size.height * 0.15,
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(1),
                      bottomRight: Radius.circular(1)),
                ),
                child: Column(
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: size.width * 0.8),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          arguments.name ?? '',
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontFamily: 'Marvel',
                              fontSize: 35,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: size.width * 0.8),
                      padding: EdgeInsets.only(
                          bottom: arguments.description == "" ? 0 : 12.0),
                      child: Text(
                        arguments.description ?? '',
                        maxLines: 3,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontFamily: 'Marvel',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: 25,
              child: SizedBox(
                height: size.height * 0.07,
                width: size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10, left: 20.0),
                      child: MarvelDefaultButton(
                        text: 'Comics',
                        onPressed: () {
                          Navigator.pushNamed(context, '/comics',
                              arguments: arguments);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: MarvelDefaultButton(
                        text: 'Events',
                        onPressed: () {
                          Navigator.pushNamed(context, '/events',
                              arguments: arguments);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: MarvelDefaultButton(
                        text: 'Series',
                        onPressed: () {
                          Navigator.pushNamed(context, '/series',
                              arguments: arguments);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: MarvelDefaultButton(
                        text: 'Stories',
                        onPressed: () {
                          Navigator.pushNamed(context, '/stories',
                              arguments: arguments);
                        },
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
