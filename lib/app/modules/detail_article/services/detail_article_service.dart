import 'package:get/get.dart';
import 'package:rewind_api/app/modules/detail_article/models/detail_article_model.dart';

class DetailArticleService{
  final _connect = Get.find<GetConnect>();

  Future<DetailNewsModel> getDetailArticleService({required String id}) async{
    final response = await _connect.get('posts/$id',
    decoder: (data) => DetailNewsModel.fromJson((data)));
    if(!response.hasError){
      return response.body!;
    } else{
      throw Get.snackbar("Error", response.statusCode.toString());
    }
  }
}