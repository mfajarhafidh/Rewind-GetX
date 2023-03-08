import 'package:get/get.dart';
import 'package:rewind_api/app/modules/home/models/list_articles_model.dart';
import 'package:rewind_api/app/modules/home/services/list_articles_service.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<NewsModel> listNewsModel = <NewsModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getListAllArticles();
  }

  Future<void> getListAllArticles() async{
    isLoading.toggle();
    try{
      final response = await ListArticlesService().getListArticles();
      final reservedResponse = response.reversed;
      listNewsModel.addAll(reservedResponse);
      isLoading.toggle();
    } catch(e){
      isLoading.toggle();
      Get.snackbar("Error", e.toString());
    }
  }
}
