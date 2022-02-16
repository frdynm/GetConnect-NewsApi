import 'package:berita/app/data/news_model.dart';
import 'package:berita/app/data/providers/news_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  NewsProvider newsProvider = NewsProvider();

  Future<List<Articles>> getAllBerita() async {
    return await newsProvider.getNews();
  }
}
