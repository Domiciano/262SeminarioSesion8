/// A song in the playlist.
class Song {
  final String title;
  final String artist;
  final String imageUrl;
  final bool isFavorite;

  const Song({
    required this.title,
    required this.artist,
    required this.imageUrl,
    this.isFavorite = false,
  });

  Song copyWith({
    String? title,
    String? artist,
    String? imageUrl,
    bool? isFavorite,
  }) {
    return Song(
      title: title ?? this.title,
      artist: artist ?? this.artist,
      imageUrl: imageUrl ?? this.imageUrl,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
