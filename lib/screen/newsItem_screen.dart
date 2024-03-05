import 'package:flutter/material.dart';
import 'package:news/model/articlesModel_screen.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key, required this.article}) : super(key: key);
final Articles article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(article.image!),fit: BoxFit.fill),
            ),
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),

          Text(article.text!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),),
        ],
      ),
    );
  }
}
