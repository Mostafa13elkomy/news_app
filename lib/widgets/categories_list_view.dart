import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_news_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:120 ,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return const CategoryCard(
          title: 'hhjh',
          image:
              'assets/modern-equipment-operating-room-medical-devices-neurosurgery_179755-5289.jpg',
        );
      }),
    );
  }
}
