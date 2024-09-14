import 'package:__news/widgets/categories_list_view.dart';
import 'package:__news/widgets/news_list_view_builder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              ' Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(
                  child: SizedBox(
                height: 32,
              )),
              NewsListViewBuilder(category: 'top',),
            ],
          )),
    );
  }
}





// Column(
//         children: [
//           CategoriesListView(),
//           SizedBox(
//             height: 32,
//           )
//           ,Expanded(child: NewsListView())
//         ],
//       ),