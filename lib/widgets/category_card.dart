import 'package:__news/models/category_model.dart';
import 'package:__news/views/category_view.dart';
import 'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return CategoryView(category: category.categoryName,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 95,
          width: 160,
          decoration: BoxDecoration(
            image:  DecorationImage( fit: BoxFit.fill,
              image: AssetImage(category.image),),
              borderRadius: BorderRadius.circular(10),
          ),
          child:  Center(
                child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
          child: Text(
                  category.categoryName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
        ),
        ),
                ),
          ),
        ),
      ),
    );
  }
}