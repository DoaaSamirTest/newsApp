import 'package:flutter/material.dart';
import 'package:newsapp_creativa/models/category_model.dart';
import 'package:newsapp_creativa/views/category_views.dart';
class CategoryCard extends StatelessWidget {
   CategoryCard({super.key, required this.categories});
  final CategoryModel categories;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: ( context){
          return CategoryViews(
            category: categories.categoryName,
          );

        }));
      },
      child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 75,
              width: 140,
              child: Center(child: Text(categories.categoryName,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.black.withOpacity(0.5),),
              
              )),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(categories.imge),
            fit: BoxFit.fill,),
                
              ),
            
            ),
          ),
        ),
    );
    }}