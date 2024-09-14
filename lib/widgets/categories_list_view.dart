import 'package:__news/models/category_model.dart';
import 'package:__news/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/general.png', categoryName: 'Top'),
    CategoryModel(image: 'assets/sports.png', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.png', categoryName: 'Technology'),
    CategoryModel(image: 'assets/business.png', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.png', categoryName: 'Politics'),  
    CategoryModel(image: 'assets/health.png', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.png', categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
