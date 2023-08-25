import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_news_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body:const CategoryCard(
        title: 'hhjh',
        image: 'assets/modern-equipment-operating-room-medical-devices-neurosurgery_179755-5289.jpg',
      )
    );
  }
}
