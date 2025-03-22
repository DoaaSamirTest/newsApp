import 'package:dio/dio.dart';
import 'package:newsapp_creativa/models/article_model.dart';

class NewsService {
  final Dio dio;
  
  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=ba3785ae5b4f40d5bd88c83e9823fbfa&category=$category');
      
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        articleList.add(articleModel);
      }

      return articleList;
    } catch (e) {
      print(e); // إضافة طباعة الخطأ فقط لتجنب ترك catch فارغًا
    }
    return []; // التأكد من أن الدالة تعيد قيمة دائمًا
  }
}
