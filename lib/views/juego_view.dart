import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JuegoView extends StatefulWidget {
  const JuegoView({super.key});

  @override
  State<JuegoView> createState() => _JuegoViewState();
}

class _JuegoViewState extends State<JuegoView> {
  Random tiroIA = Random();
  int helperTiro = 0;
  int helperJugador = 0;
  int puntosIA = 0;
  int puntosJugador = 0;
  List opcionesTiro = ['👊🏼', '✋🏼', '✌🏼'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${opcionesTiro[helperTiro]}',
              style: const TextStyle(fontSize: 60),
            ),
            Text(
              'Puntos IA: $puntosIA',
              style: GoogleFonts.hennyPenny(
                fontSize: 20,
              ),
            ),
            Text(
              '${opcionesTiro[helperJugador]}',
              style: const TextStyle(fontSize: 60),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilledButton(
                  onPressed: () {
                    setState(() {
                      helperJugador = 0;
                      //helperTiro = tiroIA.nextInt(3);
                      helperTiro = 1;

                      if (helperTiro == 0) {
                        //No pasa nada
                      } else if (helperTiro == 1) {
                        puntosIA += 1;
                      } else {
                        puntosJugador += 1;
                      }

                      if (puntosIA == 10) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title:
                                const Text('Te dije que yo te amo mucho más!!'),
                            content: const Text('Obvio que iba a ganar UuUr'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  puntosIA = 0;
                                  puntosJugador = 0;
                                  Navigator.pop(context);
                                },
                                child: const Text('Reinciar'),
                              ),
                            ],
                          ),
                        );
                        puntosIA = 0;
                        puntosJugador = 0;
                      }

                      if (puntosJugador == 10) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Esta vez tú ganaste mi amor'),
                            content:
                                const Text('Pero quiero la revancha, Te amo!!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  puntosIA = 0;
                                  puntosJugador = 0;
                                  Navigator.pop(context);
                                },
                                child: const Text('Reinciar'),
                              ),
                            ],
                          ),
                        );
                      }
                    });
                  },
                  child: const Text(
                    '👊🏼',
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      helperJugador = 1;
                      //helperTiro = tiroIA.nextInt(3);
                      helperTiro = 2;

                      if (helperTiro == 0) {
                        puntosJugador += 1;
                      } else if (helperTiro == 1) {
                        //No pasa nada
                      } else {
                        puntosIA += 1;
                      }

                      if (puntosIA == 10) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title:
                                const Text('Te dije que yo te amo mucho más!!'),
                            content: const Text('Obvio que iba a ganar UuUr'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  puntosIA = 0;
                                  puntosJugador = 0;
                                  Navigator.pop(context);
                                },
                                child: const Text('Reinciar'),
                              ),
                            ],
                          ),
                        );
                        puntosIA = 0;
                        puntosJugador = 0;
                      }

                      if (puntosJugador == 10) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Esta vez tú ganaste mi amor'),
                            content:
                                const Text('Pero quiero la revancha, Te amo!!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  puntosIA = 0;
                                  puntosJugador = 0;
                                  Navigator.pop(context);
                                },
                                child: const Text('Reinciar'),
                              ),
                            ],
                          ),
                        );
                      }
                    });
                  },
                  child: const Text(
                    '✋🏼',
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      helperJugador = 2;
                      //helperTiro = tiroIA.nextInt(3);
                      helperTiro = 0;

                      if (helperTiro == 0) {
                        puntosIA += 1;
                      } else if (helperTiro == 1) {
                        puntosJugador += 1;
                      } else {
                        //No pasa nada
                      }

                      if (puntosIA == 10) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title:
                                const Text('Te dije que yo te amo mucho más!!'),
                            content: const Text('Obvio que iba a ganar UuUr'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  puntosIA = 0;
                                  puntosJugador = 0;
                                  Navigator.pop(context);
                                },
                                child: const Text('Reinciar'),
                              ),
                            ],
                          ),
                        );
                        puntosIA = 0;
                        puntosJugador = 0;
                      }

                      if (puntosJugador == 10) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Esta vez tú ganaste mi amor'),
                            content:
                                const Text('Pero quiero la revancha, Te amo!!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  puntosIA = 0;
                                  puntosJugador = 0;
                                  Navigator.pop(context);
                                },
                                child: const Text('Reinciar'),
                              ),
                            ],
                          ),
                        );
                      }
                    });
                  },
                  child: const Text(
                    '✌🏼',
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Puntos jugador: $puntosJugador',
              style: GoogleFonts.hennyPenny(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
