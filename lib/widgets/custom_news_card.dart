import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.title, required this.image});


    final String title;
    final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(image)),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 120,
      width: 200,
      child:  Center(
          child: Text(
        title,
        style:const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      )),
    );
  }
}
