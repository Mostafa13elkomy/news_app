
import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsTile(),
      );
    });
  }
}