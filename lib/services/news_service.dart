
import 'package:__news/models/article_model.dart';
import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);  //entertainment

  Future<List<ArticleModel>> getTopHeadlines
  ({required String category}) async {
    try {
  var response = await dio.get(
      'https://newsdata.io/api/1/news?country=eg&apikey=pub_28251d32085b71e2ec486b53a77e25ee953ba&category=$category');
  Map<String, dynamic> jsonData = response.data;
  
  List<dynamic> results = jsonData['results'];
  
  List<ArticleModel> resultsList = [];
  
  for (var result in results) {
    ArticleModel articleModel = ArticleModel(
        image: result['image_url'],
        title: result['title'],
        subTitle: result['content']);
  
    resultsList.add(articleModel);
  }
  return resultsList;
}  catch (e) {
      return Future.error(e);
}
  }
}










// https://newsapi.org/v2/top-headlines?country=ca&apiKey=789983893a5c4b01a930aa83fc062c68&$category