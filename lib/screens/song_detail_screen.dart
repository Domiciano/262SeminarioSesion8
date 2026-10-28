import 'package:flutter/material.dart';
import 'package:playlist_app/models/song.dart';

/// Screen with the details of the song it receives.
class SongDetailScreen extends StatelessWidget {
  const SongDetailScreen({super.key});

  // Song song = (Song) ModalRoute.of(context)!.settings.arguments;

  @override
  Widget build(BuildContext context) {
    final song = ModalRoute.of(context)!.settings.arguments as Song;
    return Scaffold(
      appBar: AppBar(title: Text(song.title)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                width: 220,
                height: 220,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Image.network(song.imageUrl, fit: BoxFit.cover),
              ),
              const SizedBox(height: 24),
              Text(
                song.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                song.artist,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 8),
              if (song.isFavorite)
                const Text(
                  'Está en tus favoritas',
                  style: TextStyle(color: Colors.pink),
                ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Volver a la lista'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
