import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yun_app/opciones.dart';
import 'package:yun_app/views/gallery_view.dart';
import 'package:yun_app/views/juego_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Random aleatorio = Random();
  int numero = 0;
  String prediccion = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi amor'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width,
            ),
            Lottie.asset('assets/love.json'),
            Text(
              opcion[numero].opcion,
              style: GoogleFonts.dancingScript(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 100),
            FilledButton(
              onPressed: () {
                setState(() {
                  numero = aleatorio.nextInt(19) + 1;
                  prediccion = opcion[numero].opcion;
                });
              },
              child: const Text('Te díré algo hermoso'),
            ),
            const SizedBox(height: 100),
            FilledButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const JuegoView(),
                ),
              ),
              child: const Text('Juguemos!!'),
            ),

            FilledButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const GalleryView(),
                ),
              ),
              child: const Text('Mi amor por ti'),
            ),
          ],
        ),
      ),
    );
  }
}
