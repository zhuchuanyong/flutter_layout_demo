import 'package:dio/dio.dart';

class XHttp {
  // 配置公共属性
  static final Dio dio = Dio(BaseOptions(
    baseUrl: "https://www.mxnzp.com/api",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  ));

  //封装get 请求
  static Future get(String url, [Map<String, dynamic> params]) async {
    var response;
    if (params != null) {
      response = await dio.get(url, queryParameters: params);
    } else {
      response = await dio.get(url);
    }
    return response.data;
  }

  // 封装post 请求
  static Future post(String url, [Map<String, dynamic> params]) async {
    var response = await dio.post(url, data: params);
    return response.data;
  }
}
