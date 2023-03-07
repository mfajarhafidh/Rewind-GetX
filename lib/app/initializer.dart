import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class Initializer {
  static Future init() async{
    try{
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
      _initGetConnect();
    } catch(e) {
      rethrow;
    }
  }

  static Future<void> _initGetConnect() async{
    final connect = GetConnect();
    connect.baseUrl = 'https://jsonplaceholder.typicode.com/';
    Logger().d(connect.baseUrl);
    Get.put(connect);
  }
}