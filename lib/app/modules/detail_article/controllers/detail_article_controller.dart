import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rewind_api/app/modules/detail_article/models/detail_article_model.dart';
import 'package:rewind_api/app/modules/detail_article/services/detail_article_service.dart';

class DetailArticleController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<DetailNewsModel> detailArticle = DetailNewsModel().obs;
  String id = '';

  @override
  void onInit() {
    // final id = Get.arguments['id'];
    // Get.arguments['id'];
    final args = Get.arguments;
    id = args['id'];
    getDetailArticle();
    super.onInit();
  }

  Future<void> getDetailArticle() async{
    isLoading.toggle();
    try{
      final response = await DetailArticleService().getDetailArticleService(id: id);
      detailArticle(response);
      Logger().d(detailArticle.value.body);
      isLoading.toggle();
    } catch(e){
      isLoading.toggle();
      Get.snackbar("Error", e.toString());
    }
  }
}
