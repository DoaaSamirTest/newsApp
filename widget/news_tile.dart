import 'package:flutter/material.dart';
import 'package:newsapp_creativa/models/article_model.dart';

class  news_tile extends StatelessWidget {
  const  news_tile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(articleModel.image ??'assets/technology.jpg',
          height: 200,
          width: double.infinity,
          fit: BoxFit.fill,),
          
        ),
        SizedBox(
          height: 12,
        ),
        Text(articleModel.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.black87,fontSize: 28,
          fontWeight: FontWeight.w500,
        ),),
        SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle??'',
          maxLines: 2,
          style: TextStyle(color: Colors.grey,
          fontSize: 14),
          
        ),
      ],
    );
  }
}