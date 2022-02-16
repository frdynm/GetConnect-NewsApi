import 'package:berita/app/data/news_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeView'),
          centerTitle: true,
        ),
        body: FutureBuilder<List<Articles>>(
            future: controller.getAllBerita(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    Articles artikel = snapshot.data![index];

                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.amber)),
                        child: Column(
                          children: [
                            Text(" Judul Artikel \n ${artikel.title} "),
                            Image.network("${artikel.urlToImage.toString()}"),
                            Text(
                                "Diterbitkan tanggal \n  ${artikel.publishedAt}"),
                            Text(" isi Artikel \n ${artikel.content} "),
                          ],
                        ),
                      ),
                    );

                    // return ListTile(
                    //   // onTap: () => Get.toNamed(Routes.DETAIL_BERITA,
                    //   // arguments: artikel[index]),

                    //   title: Text("${artikel.title} "),
                    //   subtitle: Text("${artikel.publishedAt}"),
                    // );
                  });
            }));
  }
}
