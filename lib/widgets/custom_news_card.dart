import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(category.imageAssetsUrl)),
          borderRadius: BorderRadius.circular(8),
        ),
        height: 120,
        width: 200,
        child: Center(
            child: Text(
          category.categoryName,
          style: const TextStyle(
              color:Colors.yellow , fontSize: 18, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
