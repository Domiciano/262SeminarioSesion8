import 'package:flutter/material.dart';
import 'package:playlist_app/components/song_card.dart';
import 'package:playlist_app/models/song.dart';

/// List of songs, or a message when there are none.
class SongList extends StatelessWidget {
  final List<Song> songs;
  final Function(Song) onDelete;
  final Function(Song) onToggleFavorite;

  const SongList({
    super.key,
    required this.songs,
    required this.onDelete,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    if (songs.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(24),
        child: Text(
          'Todavía no hay canciones',
          style: TextStyle(color: Colors.grey),
        ),
      );
    }
    return Column(
      children: [
        for (final song in songs)
          SongCard(
            song: song,
            onDelete: () => onDelete(song),
            onToggleFavorite: () => onToggleFavorite(song),
          ),
      ],
    );
  }
}
