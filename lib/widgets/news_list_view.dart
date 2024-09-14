import 'package:__news/models/article_model.dart';
import 'package:__news/widgets/news_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewsListView extends StatelessWidget {
 final List<ArticleModel> results;
  const NewsListView({
    super.key, required this.results,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: results.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsPart(
              articleModel: results[index],
            ),
          );
        },
      ),
    );
  }
}
