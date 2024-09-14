// import 'package:__news/models/article_model.dart';
// import 'package:__news/services/news_service.dart';
// import 'package:__news/widgets/news_part.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {

//   List <ArticleModel> articles =[];
//   bool isLoading =true;
//   @override
//   void initState() {
//     super.initState();

//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getNews();
//     isLoading=false;
//     setState(() {
      
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  isLoading ? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(
//       backgroundColor:Colors.orange ,
//       color: Colors.white,
//     ))) : SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//         (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 22),
//             child:  NewsPart(articleModel: articles[index],),
//           );
//         },
//       ),
//     );
//   }
// }
