import 'package:flutter/material.dart';
import 'package:newsapp_creativa/widget/news_list_view.dart';

class CategoryViews extends StatelessWidget {
  const CategoryViews({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListView(category: category,),
        ],
      ),
    );
  }
}