import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rewind_api/app/modules/home/widgets/list_tile_articles_widget.dart';
import 'package:rewind_api/app/routes/app_pages.dart';
import 'package:rewind_api/app/shared/color_scheme/color_scheme.dart';
import 'package:rewind_api/app/shared/text_style/text_style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text('StarNews', style: headline1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ListTileArticles()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Get.toNamed(Routes.POST_ARTICLE),
        backgroundColor: colorFillContainer,
        child: Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}
