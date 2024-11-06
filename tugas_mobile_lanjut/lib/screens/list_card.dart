import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final String headline;
  final String description;
  final String time;

  const ListCard({
    Key? key,
    required this.headline,
    required this.description,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.article, size: 50),
        title: Text(headline, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.today, size: 14),
                const SizedBox(width: 5),
                Text(time, style: const TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
        trailing: const Icon(Icons.play_arrow),
      ),
    );
  }
}
