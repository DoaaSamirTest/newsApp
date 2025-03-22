import 'package:flutter/material.dart';
import 'package:newsapp_creativa/models/category_model.dart';
import 'package:newsapp_creativa/widget/category_card.dart';
class CategoryList_views extends StatelessWidget {
   CategoryList_views({super.key});
 final List<CategoryModel>category=[
  CategoryModel(imge: 'assets/business.jpg', categoryName: "Business"),
  CategoryModel(imge: 'assets/entertaiment.jpg', categoryName: "Entertaiment"),
  CategoryModel(imge: 'assets/health.jpg', categoryName: "Health"),
  CategoryModel(imge: 'assets/science.jpg', categoryName: "Science"),
  CategoryModel(imge: 'assets/sport.jpg', categoryName: "Sport"),
  CategoryModel(imge: 'assets/technology.jpg', categoryName: "Technology"),
  CategoryModel(imge: 'assets/general.jpg', categoryName: "General"),

 ];

  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: 100, // ارتفاع مناسب لعرض العناصر
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: category.length,
    itemBuilder: (context, index) {
      return CategoryCard(categories: category[index],);
    },
  ),
);

    }
}