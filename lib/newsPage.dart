import 'package:flutter/material.dart';
import 'package:news_harmony/newscard.dart';

class newsPage extends StatelessWidget {
  final List<Map<String, String>> data = [
    {'title': 'News 1', 'imagePath': 'images/news01.jpg'},
    {'title': 'News 2', 'imagePath': 'images/news02.jpg'},
    {'title': 'News 3', 'imagePath': 'images/news02.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return newsCard(title: item['title']!, imagePath: item['imagePath']!);
      },
    );
  }
}
