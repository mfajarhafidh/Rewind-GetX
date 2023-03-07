import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:rewind_api/app/modules/home/models/list_articles_model.dart';

class ListArticlesService {
  final _connect = Get.find<GetConnect>();

  Future<List<NewsModel>> getListArticles() async {
    final response = await _connect.get('posts',
        decoder: (value) =>
            List<NewsModel>.from(value.map((x) => NewsModel.fromJson(x))));
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar("Error", response.statusCode.toString());
    }
  }
}
