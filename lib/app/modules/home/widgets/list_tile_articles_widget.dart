import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rewind_api/app/modules/home/controllers/home_controller.dart';
import 'package:rewind_api/app/routes/app_pages.dart';
import 'package:rewind_api/app/shared/color_scheme/color_scheme.dart';
import 'package:rewind_api/app/shared/text_style/text_style.dart';

class ListTileArticlesWidget extends StatelessWidget {
  const ListTileArticlesWidget(
      {super.key, required this.title, required this.desc, required this.id});
  final String title, desc, id;

  @override
  Widget build(BuildContext context) {
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
          onTap: () =>
              Get.toNamed(Routes.DETAIL_ARTICLE, arguments: {'id': id}),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(title, style: headline2),
          ),
          subtitle: Text(desc,
              style: headline3.copyWith(fontWeight: FontWeight.w400),
              maxLines: 3,
              overflow: TextOverflow.ellipsis),
        ),
      ),
    );
  }
}
