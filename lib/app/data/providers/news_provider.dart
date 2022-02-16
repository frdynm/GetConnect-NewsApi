import 'package:berita/app/data/news_model.dart';
import 'package:get/get.dart';

class NewsProvider extends GetConnect {
  Future<List<Articles>> getNews() async {
    final response = await get(
        'https://newsapi.org/v2/top-headlines?country=id&apiKey=bfd5b46e44594a95bac28fac1f753625');
    return Articles.fromJsonList(response.body["articles"]);
  }
}
