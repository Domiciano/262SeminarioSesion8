import 'package:flutter/material.dart';
import 'package:playlist_app/components/song_form.dart';
import 'package:playlist_app/models/song.dart';

/// Screen that will host the form for a new song.
class AddSongScreen extends StatelessWidget {
  const AddSongScreen({super.key});

  void _addSong(Song song) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nueva canción')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(children: [SongForm(onAdd: (song) => _addSong(song))]),
        ),
      ),
    );
  }
}
