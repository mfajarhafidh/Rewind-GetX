import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rewind_api/app/shared/color_scheme/color_scheme.dart';
import 'package:rewind_api/app/shared/text_style/text_style.dart';

import '../controllers/detail_article_controller.dart';

class DetailArticleView extends GetView<DetailArticleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Detail Articles', style: headline1),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 50, left: 24, right: 24, bottom: 40),
          child: Container(
            padding: EdgeInsets.only(left: 19, top: 25, bottom: 16, right: 8),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.black54,
                  offset: Offset(0.0, 0.75)
                )
              ],
              borderRadius: BorderRadius.circular(15),
              color: colorFillContainer,
            ),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(controller.list1[0], style: headline2),
              ),
              subtitle: Text(controller.list2[0],
                  style: headline3.copyWith(fontWeight: FontWeight.w400)),
            ),
          ),
        ));
  }
}
