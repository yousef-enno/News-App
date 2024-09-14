import 'package:__news/models/article_model.dart';
import 'package:flutter/material.dart';

class NewsPart extends StatelessWidget {
  const NewsPart({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image != null ? Image.network(articleModel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ):Image.asset(
          'assets/no-picture-available-icon-1.jpg',)
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle?? 'No Subtitle Here',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
