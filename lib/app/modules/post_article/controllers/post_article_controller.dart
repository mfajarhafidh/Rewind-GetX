import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostArticleController extends GetxController {
  FocusNode nodeTwo = FocusNode();

  void changeFocus() {
    nodeTwo.requestFocus();
  }
}
