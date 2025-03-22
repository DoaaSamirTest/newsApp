
import 'package:flutter/material.dart';
import 'package:newsapp_creativa/models/article_model.dart';
import 'package:newsapp_creativa/services/news_services.dart';
import 'package:newsapp_creativa/widget/news_tile.dart';
import 'package:dio/dio.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key, required this.category});
  final String category;

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List <ArticleModel>articles = [];
  bool isLoading=true;
  @override
  void initState() {
    
    super.initState();
     getGeneralNews();
  }

  Future<void> getGeneralNews() async {
     articles = await NewsService(Dio()).getTopHeadLines(category: widget.category);
     isLoading=false;
     setState(() {
       
     });
  }
  
  Widget build(BuildContext context) {
    
    return isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) : SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 22),
            child: news_tile(articleModel: articles[index],), // تأكد من أن اسم الكلاس صحيح
          );
        },
        childCount: articles.length, // يجب أن يكون بعد الـ builder وليس قبله
      ),
    );
  }
}
