import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rewind_api/app/routes/app_pages.dart';
import 'package:rewind_api/app/shared/text_style/text_style.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/icon_splash.png'),
      title: Text("StarNews", style: headline1.copyWith(fontSize: 36)),
      loadingText: Text("Please Wait. . ."),
      navigator: Routes.HOME,
    );
  }
}
