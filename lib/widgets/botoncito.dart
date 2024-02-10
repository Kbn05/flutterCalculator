import 'package:flutter/material.dart';

class MyBoton extends StatelessWidget {
  final Function() botonAccion;
  final String textoButton;
  final Size? size;
  final double? fontSize;
  final Color? color;
  final double borderRadius;

  const MyBoton(
      {Key? key,
      required this.botonAccion,
      required this.textoButton,
      this.size,
      this.fontSize = 16.0,
      this.color,
      this.borderRadius = 4.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          botonAccion();
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(size ?? const Size(70, 40)),
          backgroundColor: MaterialStateProperty.all(
              color ?? const Color.fromARGB(255, 103, 113, 121)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        child: Text(textoButton,
            style: TextStyle(fontSize: fontSize, color: Colors.white)),
      ),
    );
  }
}
