import 'package:flutter/cupertino.dart';
import 'package:news/News_service/newsService.dart';

import '../model/articlesModel_screen.dart';
import 'newsItem_screen.dart';

class NewsListviwe extends StatelessWidget {
   NewsListviwe({Key? key}) : super(key: key);

    final List news=[
      Articles(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-KnF0nCIlZs9sBGxWziIuse82phTisNbYtNl4lQ3eEw&s', title: "mahmoid", text: "text"),
      Articles(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-KnF0nCIlZs9sBGxWziIuse82phTisNbYtNl4lQ3eEw&s', title: "mahmoid", text: "text"),
      Articles(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-KnF0nCIlZs9sBGxWziIuse82phTisNbYtNl4lQ3eEw&s', title: "mahmoid", text: "text"),
      Articles(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-KnF0nCIlZs9sBGxWziIuse82phTisNbYtNl4lQ3eEw&s', title: "mahmoid", text: "text"),
    ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: news.length,
        itemBuilder: (context, i) {
          return NewsItem(article:news[i] ,
          );
        });
  }
}
