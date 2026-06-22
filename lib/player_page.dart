import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {
  final String nombrePelicula;

  const PlayerPage({super.key, required this.nombrePelicula});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(nombrePelicula),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Icon(
                  Icons.play_circle_fill,
                  color: Colors.red,
                  size: 90,
                ),
              ),
            ),

            const SizedBox(height: 25),

            Text(
              nombrePelicula,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                iconButton(Icons.replay_10, 'Retroceder'),
                iconButton(Icons.play_arrow, 'Play'),
                iconButton(Icons.pause, 'Pausa'),
                iconButton(Icons.forward_10, 'Adelantar'),
              ],
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                optionButton(Icons.volume_up, 'Volumen'),
                optionButton(Icons.subtitles, 'Subtítulos'),
                optionButton(Icons.high_quality, 'Calidad'),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              'Reproductor simulado para representar los controles básicos de una película en streaming.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconButton(IconData icono, String texto) {
    return Column(
      children: [
        Icon(
          icono,
          color: Colors.red,
          size: 35,
        ),
        const SizedBox(height: 5),
        Text(
          texto,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }

  Widget optionButton(IconData icono, String texto) {
    return Column(
      children: [
        Icon(
          icono,
          color: Colors.white,
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(
          texto,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }
}

