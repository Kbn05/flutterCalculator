import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldcalculator extends StatefulWidget {
  final TextEditingController controller;
  final Size? size;

  const TextFieldcalculator(
      {Key? key, required this.controller, this.size = const Size(150, 100)})
      : super(key: key);

  @override
  State<TextFieldcalculator> createState() => _TextFieldcalculatorState();
}

class _TextFieldcalculatorState extends State<TextFieldcalculator> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        filled: true,
        fillColor: const Color.fromARGB(255, 124, 163, 112),
        contentPadding: EdgeInsets.symmetric(
          vertical: widget.size!.height /
              2, // Divide entre 2 para centrar verticalmente
          horizontal: widget.size!.width /
              4, // Divide entre 4 para centrar horizontalmente
        ),
      ),
      textAlign: TextAlign.right,
      style: TextStyle(
          fontSize: 80, fontFamily: GoogleFonts.quantico().fontFamily),
      controller: widget.controller,
    );
  }
}
