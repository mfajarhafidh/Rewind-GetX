import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rewind_api/app/routes/app_pages.dart';
import 'package:rewind_api/app/shared/color_scheme/color_scheme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text('StarNews', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ListView.builder(
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
                      offset: Offset(0.0, 0.75)
                    )
                  ]
                ),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(controller.list1[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                  ),
                  subtitle: Text(controller.list2[index], style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black), maxLines: 3, overflow: TextOverflow.ellipsis),
                ),
              ),
            );
           },        
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Get.toNamed(Routes.POST_ARTICLE),
        backgroundColor: colorFillContainer,
        child: Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}
