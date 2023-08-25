import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/custom_news_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });
  List<CategoryModel> categories = [
    CategoryModel(
        categoryName: 'Sports',
        imageAssetsUrl: 'assets/470f80c7a28a39a9d797be2feca068ef.jpg'),
    CategoryModel(
        categoryName: 'Science',
        imageAssetsUrl:
            'assets/modern-equipment-operating-room-medical-devices-neurosurgery_179755-5289.jpg'),
    CategoryModel(
        categoryName: 'Business',
        imageAssetsUrl: 'assets/pexels-photo-926390.jpeg'),
    CategoryModel(
        categoryName: 'General',
        imageAssetsUrl: 'assets/photo-1457369804613-52c61a468e7d.jpeg'),
    CategoryModel(
        categoryName: 'Entertainment',
        imageAssetsUrl: 'assets/photo-1603190287605-e6ade32fa852.jpeg'),
    CategoryModel(
        categoryName: 'Technology', imageAssetsUrl: 'assets/technology.jpeg')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          }),
    );
  }
}
