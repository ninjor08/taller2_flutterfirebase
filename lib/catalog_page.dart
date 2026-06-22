import 'package:flutter/material.dart';
import 'player_page.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Catálogo de Películas'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const Text(
            'Populares',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          movieCard(
            context,
            'Avatar',
            'Una aventura de ciencia ficción en un mundo sorprendente.',
            Icons.public,
          ),
          movieCard(
            context,
            'Rápidos y Furiosos',
            'Acción, autos y velocidad en una historia emocionante.',
            Icons.directions_car,
          ),

          const SizedBox(height: 20),

          const Text(
            'Tendencias',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          movieCard(
            context,
            'Interestelar',
            'Un viaje espacial para salvar a la humanidad.',
            Icons.rocket_launch,
          ),
          movieCard(
            context,
            'Batman',
            'Un héroe oscuro protege la ciudad del crimen.',
            Icons.dark_mode,
          ),

          const SizedBox(height: 20),

          const Text(
            'Nuevas Llegadas',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          movieCard(
            context,
            'Mario Bros',
            'Una divertida aventura en un mundo lleno de colores.',
            Icons.sports_esports,
          ),
          movieCard(
            context,
            'Joker',
            'Una historia dramática sobre un personaje diferente.',
            Icons.theater_comedy,
          ),
        ],
      ),
    );
  }

  Widget movieCard(
    BuildContext context,
    String titulo,
    String descripcion,
    IconData icono,
  ) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Icon(
          icono,
          color: Colors.red,
          size: 45,
        ),
        title: Text(
          titulo,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          descripcion,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: const Icon(
          Icons.play_circle_fill,
          color: Colors.red,
          size: 35,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlayerPage(nombrePelicula: titulo),
            ),
          );
        },
      ),
    );
  }
}

