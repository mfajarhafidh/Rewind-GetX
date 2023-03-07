import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind_api/app/modules/home/controllers/home_controller.dart';
import 'package:rewind_api/app/routes/app_pages.dart';
import 'package:rewind_api/app/shared/color_scheme/color_scheme.dart';
import 'package:rewind_api/app/shared/text_style/text_style.dart';

class ListTileArticles extends GetView<HomeController> {
  const ListTileArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.list1.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 25),
          child: Container(
            padding: EdgeInsets.only(left: 19, top: 25, bottom: 16, right: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: colorFillContainer,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5,
                      offset: Offset(0.0, 0.75))
                ]),
            child: ListTile(
              onTap: () => Get.toNamed(Routes.DETAIL_ARTICLE),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(controller.list1[index],
                    style: headline2),
              ),
              subtitle: Text(controller.list2[index],
                  style: headline3.copyWith(fontWeight: FontWeight.w400),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
        );
      },
    );
  }
}
