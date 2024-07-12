import 'dart:io';

import 'package:ders12/views/home/post_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class PostService {
  //burdaki postları çekip anasayfada göstermek istiyorum .
  //https://jsonplaceholder.typicode.com/posts
  final Dio _dio = Dio();

  String baseUrl = "https://jsonplaceholder.typicode.com";

  Future<List<PostModel>?> fetchPostList() async {
    _dio.interceptors.add(PrettyDioLogger());

    String path = "posts";
    try {
      var response = await _dio.get("$baseUrl/$path");
      if (response.statusCode == HttpStatus.ok) {
        var data = response.data;
        if (data is List) {
          List<PostModel> postListesi =
              data.map((json) => PostModel.fromJson(json)).toList();
          return postListesi;
        }
      }
    } catch (e) {
      print("Dio hatası :$e");
    }
    return null;
    // print(response.data);
  }

  Future<PostModel?> fetchPost(int id) async {
    _dio.interceptors.add(PrettyDioLogger());

    String path = "posts";
    try {
      var response = await _dio.get("$baseUrl/$path/$id");
      if (response.statusCode == HttpStatus.ok) {
        var data = response.data;
        if (data is Map<String, dynamic>) {
          PostModel postModel = PostModel.fromJson(data);
          return postModel;
        }
      }
    } catch (e) {
      print("Dio hatası :$e");
    }
    return null;
    // print(response.data);
  }
}
