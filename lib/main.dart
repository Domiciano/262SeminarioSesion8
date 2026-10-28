import 'package:flutter/material.dart';
import 'package:playlist_app/screens/add_song_screen.dart';
import 'package:playlist_app/screens/login_screen.dart';
import 'package:playlist_app/screens/playlist_screen.dart';
import 'package:playlist_app/screens/song_detail_screen.dart';

void main() {
  runApp(const App());
}

/// Root of the app, with the route table.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/playlist': (context) => const PlaylistScreen(),
        '/songdetail': (context) => const SongDetailScreen(),
        '/addsong': (context) => const AddSongScreen(),
      },
    );
  }
}
