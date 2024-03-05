
import 'package:flutter/material.dart';

import '../model/categorymodel_screen.dart';
import 'category_screen.dart';

class CategoryListvew extends StatelessWidget {
    CategoryListvew({
    super.key,
  });
 final List categorys=[
   CategoryModel(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-KnF0nCIlZs9sBGxWziIuse82phTisNbYtNl4lQ3eEw&s', text: 'News11'),
CategoryModel(image: 'https://www.almadatv.com/bigimage.php?id=43', text: 'News22'),
CategoryModel(image: 'https://play-lh.googleusercontent.com/rpmVTTXNsL128A2_xVgPh2K1jGuF3FXztR316y-nRmg8TEU5y8hr15hTCVGITxW0tEU=w240-h480-rw', text: 'News33'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(

          scrollDirection: Axis.horizontal,
          itemCount: categorys.length,
          itemBuilder:(context,i){
            return Category(modele: categorys[i]);
          }),
    );
  }
}
