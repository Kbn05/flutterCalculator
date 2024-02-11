import 'package:flutter/material.dart';
import 'package:calculadora/widgets/botoncito.dart';
import 'package:calculadora/widgets/textField.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final TextEditingController _controller = TextEditingController();
  var val1 = '0';
  var val2 = '0';
  var result = '0';
  var operation = "";
  String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 219, 224),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFieldcalculator(
              controller: _controller,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              _controller.clear();
                              val1 = '0';
                              val2 = '0';
                              result = '0';
                              operation = "";
                            },
                            textoButton: "CA",
                            color: const Color.fromARGB(255, 255, 135, 37),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              _controller.text = _controller.text
                                  .substring(0, _controller.text.length - 1);
                            },
                            textoButton: "CE",
                            color: const Color.fromARGB(255, 255, 135, 37),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              val1 = _controller.text;
                              _controller.clear();
                              operation = "%";
                            },
                            textoButton: "%",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              val1 = _controller.text;
                              _controller.clear();
                              operation = "/";
                            },
                            textoButton: "/",
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              _controller.text = "${_controller.text}7";
                            },
                            textoButton: "7",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              _controller.text = "${_controller.text}8";
                            },
                            textoButton: "8",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              _controller.text = "${_controller.text}9";
                            },
                            textoButton: "9",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              val1 = _controller.text;
                              _controller.clear();
                              operation = "x";
                            },
                            textoButton: "x",
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              _controller.text = "${_controller.text}4";
                            },
                            textoButton: "4",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              _controller.text = "${_controller.text}5";
                            },
                            textoButton: "5",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              _controller.text = "${_controller.text}6";
                            },
                            textoButton: "6",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              val1 = _controller.text;
                              _controller.clear();
                              operation = "-";
                            },
                            textoButton: "-",
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: const Color.fromARGB(255, 209, 219, 224),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  MyBoton(
                                    botonAccion: () {
                                      _controller.text += "1";
                                    },
                                    textoButton: "1",
                                  ),
                                  MyBoton(
                                    botonAccion: () {
                                      _controller.text += "2";
                                    },
                                    textoButton: "2",
                                  ),
                                  MyBoton(
                                    botonAccion: () {
                                      _controller.text += "3";
                                    },
                                    textoButton: "3",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  MyBoton(
                                    botonAccion: () {
                                      _controller.text += "0";
                                    },
                                    textoButton: "0",
                                  ),
                                  MyBoton(
                                    botonAccion: () {
                                      _controller.text += ".";
                                    },
                                    textoButton: ".",
                                  ),
                                  MyBoton(
                                    botonAccion: () {
                                      val2 = _controller.text;
                                      _controller.clear();
                                      try {
                                        switch (operation) {
                                          case "+":
                                            result = (double.parse(val1) +
                                                    double.parse(val2))
                                                .toString();
                                            break;
                                          case "-":
                                            result = (double.parse(val1) -
                                                    double.parse(val2))
                                                .toString();
                                            break;
                                          case "x":
                                            result = (double.parse(val1) *
                                                    double.parse(val2))
                                                .toString();
                                            break;
                                          case "/":
                                            if (double.parse(val2) == 0) {
                                              result = "Error";
                                            } else {
                                              result = (double.parse(val1) /
                                                      double.parse(val2))
                                                  .toString();
                                            }
                                            break;
                                          case "%":
                                            result = ((double.parse(val1) *
                                                        double.parse(val2)) /
                                                    100)
                                                .toString();
                                            break;
                                        }
                                        if (double.parse(result) % 1 == 0) {
                                          result = double.parse(result)
                                              .toInt()
                                              .toString();
                                        }
                                        _controller.text = result;
                                        val1 = '0';
                                        val2 = '0';
                                        result = '0';
                                        operation = "";
                                      } catch (e) {
                                        _controller.text = "Error";
                                      }
                                    },
                                    textoButton: "=",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          MyBoton(
                            botonAccion: () {
                              val1 = _controller.text;
                              _controller.clear();
                              operation = "+";
                            },
                            textoButton: "+",
                            size: const Size(80, 160),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
