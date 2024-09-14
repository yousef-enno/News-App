import 'package:__news/models/article_model.dart';
import 'package:__news/services/news_service.dart';
import 'package:__news/widgets/news_list_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var data;
  @override
  void initState() {
    data = NewsService(Dio()).getTopHeadlines(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              results: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Center(
                    child: Padding(
              padding: EdgeInsets.only(top: 200),
              child: Row(
                children: [
                  Text(
                    'Oops there Was An ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Error ⛔',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    ' Pls Try Later',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )));
          } else {
            return const SliverToBoxAdapter(
                child: Center(
                    child: Padding(
              padding: EdgeInsets.only(top: 200),
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.orange,
              ),
            )));
          }
        });
  }
}

    // return isLoading
    //     ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty? NewsListView(articles: articles) : SliverToBoxAdapter(
    //       child: Text('Oops There Was An Error ..... Pls Try Later'),
    //     );
//   }
// }
































// Widget build(BuildContext context) {
//   return FutureBuilder<List<ArticleModel>>(
//     future: future,
//     builder: (context, snapshot) {
//       if (snapshot.hasError) {
//         return const SliverToBoxAdapter(
//           child: Text('Oops  Was An Error Pls Try Later'),
//         );
//       } else if (!snapshot.hasData) {
//         return const SliverToBoxAdapter(
//           child: Center(
//             child: CircularProgressIndicator(),
//           ),
//         );
//       } else {
//         return NewsListView(
//           articles: snapshot.data!,
//         );
//       }
//     },
//   );
// }
