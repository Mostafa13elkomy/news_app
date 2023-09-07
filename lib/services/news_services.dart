import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  getGeneralNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=096de7831df747cb96b3341440320831&country=eg&category=general');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    for (var article in articles) {
      print(article["author"]);
    }
  }
}
