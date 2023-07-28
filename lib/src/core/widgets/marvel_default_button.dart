import 'package:flutter/material.dart';
import 'package:marvel_app/src/core/widgets/slant_clipper.dart';

class MarvelDefaultButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color textColor;
  final double? widthSize;
  final double? heightSize;
  final bool elevation;
  const MarvelDefaultButton(
      {required this.text,
      required this.onPressed,
      this.elevation = true,
      this.widthSize,
      this.heightSize,
      this.backgroundColor = const Color(0xFF8300f2),
      this.textColor = Colors.white,
      super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          bottom: -20,
          left: 0,
          child: ClipPath(
            clipper: SlantClipper(),
            child: Container(
                width: widthSize ?? size.width * 0.35,
                height: heightSize ?? size.height * 0.062,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  color: const Color(0xFFf2d403),
                )),
          ),
        ),
        ClipPath(
          clipper: SlantClipper(),
          child: SizedBox(
            width: widthSize ?? size.width * 0.35,
            height: heightSize ?? size.height * 0.062,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(backgroundColor!),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                  (state) => RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: const BorderSide(
                      color: Color(0xFF8300f2),
                      width: 0,
                    ),
                  ),
                ),
              ),
              onPressed: onPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                        fontFamily: 'Marvel',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: textColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
