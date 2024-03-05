import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/News_service/newsService.dart';
import 'package:news/screen/home_screen.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(News());
  
}

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
