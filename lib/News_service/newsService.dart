import 'package:dio/dio.dart';
import 'package:news/model/articlesModel_screen.dart';

class NewsService{

  final Dio dio =Dio();

   Future<List<Articles> > getHttp() async {
    final response = await dio.get(
        'https://newsapi.org/v2/everything?q=sport&apiKey=c2558e0d3bd24b589186de3a336bc7bc');
    Map<String,dynamic> jsondata = response.data;
    List<dynamic> articles=jsondata["articles"];
    List<Articles> art=[];
    for(var article in articles){
      Articles ar=Articles(image: article['urlToImage'], title: article['author'], text: article["title"],);

      art.add(ar);
    }
   return art;
}
}





