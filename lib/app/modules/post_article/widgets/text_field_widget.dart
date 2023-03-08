import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:rewind_api/app/modules/post_article/controllers/post_article_controller.dart';
import 'package:rewind_api/app/shared/color_scheme/color_scheme.dart';
import 'package:rewind_api/app/shared/text_style/text_style.dart';

class TextFieldWidget extends GetView<PostArticleController> {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Judul", style: headline3),
        Gap(10),
        TextField(
          style: headline1,
          controller: controller.title,
          onSubmitted: (value) => controller.changeFocus(),
          decoration: InputDecoration(
              filled: true,
              fillColor: colorFillContainer,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none)),
        ),
        Gap(29),
        Text("Content Article", style: headline3),
        Gap(10),
        TextField(
          style: headline3.copyWith(fontWeight: FontWeight.w400),
          controller: controller.desc,
          focusNode: controller.nodeTwo,
          decoration: InputDecoration(
              filled: true,
              fillColor: colorFillContainer,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none)),
          maxLines: 10,
        ),
        Gap(100),
        btnPost()
      ],
    );
  }

  Widget btnPost() {
    return Obx(() => GestureDetector(
          onTap: () => controller.postArticleController(),
          child: Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 125, vertical: 19),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: colorFillContainer),
            child: controller.isLoading.value
                ? CircularProgressIndicator()
                : Center(child: Text("Post", style: headline1)),
          ),
        ));
  }
}
