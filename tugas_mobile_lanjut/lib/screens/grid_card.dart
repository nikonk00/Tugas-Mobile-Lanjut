import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String artist;
  final String song;

  const GridCard({
    Key? key,
    required this.artist,
    required this.song,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.music_note, size: 50),
            const SizedBox(height: 10),
            Text(artist, style: const TextStyle(fontSize: 16)),
            Text(song, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
