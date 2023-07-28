import 'package:flutter/material.dart';
import 'package:marvel_app/src/home/model/characters.dart';

class ComicPhoto extends StatelessWidget {
  final GestureTapCallback onTap;
  final Thumbnail thumbnail;
  final String description;
  const ComicPhoto(
      {required this.onTap,
      required this.description,
      required this.thumbnail,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: const ColorFilter.matrix(<double>[
        1,
        0,
        0,
        0,
        0,
        0,
        1.5,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
      ]),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 220,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('${thumbnail.path}.${thumbnail.extension}'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(1),
            border: Border.all(
              color: Colors.white,
              width: 5,
            ),
          ),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(1),
                      bottomRight: Radius.circular(1)),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      description,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Marvel',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
