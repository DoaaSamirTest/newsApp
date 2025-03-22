import 'package:flutter/material.dart';
import 'package:newsapp_creativa/widget/news_list_view.dart';
import 'package:newsapp_creativa/widget/categoryList_views.dart';
//import 'package:newsapp_creativa/widget/news_tile.dart';


class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue[900],
        title: const Row(
          mainAxisSize: MainAxisSize.min, // يمنع العنوان من أخذ العرض بالكامل
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5), // مسافة صغيرة بين الكلمات
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoryList_views(),),
          SliverToBoxAdapter(
             child: SizedBox(
              height: 32,

             ),
          ),
          NewsListView(
            category: 'general',
          ),
          
        ],
      )
      )

      
    );
  }
}

