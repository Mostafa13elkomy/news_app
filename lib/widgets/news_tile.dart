import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child:articleModel.image != null ? Image.network(articleModel.image!) : 
            Image.asset('assets/1266579.jpg')
            ),
        const SizedBox(
          height: 12,
        ),
          Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:const TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
          Text(
        articleModel.subTitle ?? '' ,
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 16),
        ),
      ],
    );
  }
}
