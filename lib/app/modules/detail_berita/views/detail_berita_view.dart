import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_berita_controller.dart';

class DetailBeritaView extends GetView<DetailBeritaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DetailBeritaView'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Text("ini judulnya:"),
                  Text("ini judulnya:"),
                  Text("ini Foto beritanya"),
                  Text("ini Foto beritanya"),
                  Text("ini Isi beritanya"),
                  Text("ini Foto beritanya"),
                ],
              ),
            ),
          ),
        ));
  }
}
