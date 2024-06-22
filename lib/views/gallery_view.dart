import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi amor por ti'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          Tijuana(),
          Yucatan(),
          Text(
            'Y todavía falta mucho para acercarnos a lo que siento por ti mi amor.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      )
    );
  }
}

class Tijuana extends StatelessWidget {
  const Tijuana({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Mi amor por ti se extiende desde el extremo norte del país',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        InteractiveViewer(
          minScale: 1,
          maxScale: 4,
          child: Container(
            width: 300,
            height: 500,
            decoration: const BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage('assets/tijuana.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Yucatan extends StatelessWidget {
  const Yucatan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Hasta la punta de la península de Yucatán',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        InteractiveViewer(
          minScale: 1,
          maxScale: 4,
          child: Container(
            width: 300,
            height: 500,
            decoration: const BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage('assets/yucatan.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
