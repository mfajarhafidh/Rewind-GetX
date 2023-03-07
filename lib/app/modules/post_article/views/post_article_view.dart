import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:rewind_api/app/modules/post_article/widgets/text_field_widget.dart';
import 'package:rewind_api/app/shared/color_scheme/color_scheme.dart';
import 'package:rewind_api/app/shared/text_style/text_style.dart';

import '../controllers/post_article_controller.dart';

class PostArticleView extends GetView<PostArticleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text('StarNews', style: headline1),
        ),
        leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
            ),
          ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 60),
          child: TextFieldWidget()
        ),
      )
    );
  }
}
