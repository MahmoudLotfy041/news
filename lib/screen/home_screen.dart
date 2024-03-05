import 'package:flutter/material.dart';
import 'package:news/screen/category_screen.dart';
import 'package:news/screen/newsItem_screen.dart';

import 'cateListviwe_screen.dart';
import 'newsListviwe_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.w700),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  color: Colors.orange, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body:CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoryListvew()),
          SliverToBoxAdapter(child: NewsListviwe()),
        ],
      ),

        // Column(children: [
        //   CategoryListvew(),
        //   NewsListviwe(),
        // ],),
    );
  }
}
