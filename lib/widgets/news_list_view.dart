import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  bool isLoading = true;
  List<ArticleModel> articles = [];

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
  
    articles = await NewsServices(Dio()).getGeneralNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ?
    const SliverToBoxAdapter(child: Center(child:CircularProgressIndicator()))
    : SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return NewsTile(
          articleModel: articles[index],
        );
      }),
    );
  }
}
