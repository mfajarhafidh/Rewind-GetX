import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rewind_api/app/modules/post_article/services/post_article_service.dart';

class PostArticleController extends GetxController {
  FocusNode nodeTwo = FocusNode();

  RxBool isLoading = false.obs;
  

  void changeFocus() {
    nodeTwo.requestFocus();
  }

  final title = TextEditingController();
  final desc = TextEditingController();

  Future<void> postArticleController() async{
    isLoading.toggle();
    try{
      final response = await PostArticleService().postArticle(title: title.text, desc: desc.text);
      Logger().d(response);
      isLoading.toggle();
      Get.back();
      Get.snackbar("Success", "You have post the new article!");
    } catch(e){
      isLoading.toggle();
      Get.snackbar("Failed", "Failed to post, please try again");
    }
  }
}
