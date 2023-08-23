import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:platina_uz/core/constants.dart';
import 'package:platina_uz/features/home/domain/entities/post_model.dart';
import 'package:platina_uz/features/home/domain/entities/result_model.dart';

class PostRepository {
  var base_uri = Constants.BASE_URL;
  late String post_model_uri = base_uri + Constants.POST_URL;
  late String business_uri = base_uri + Constants.BUSINESS_URL;
  late String menu_uri = base_uri + Constants.MENU_URL;
  late String article_uri = base_uri + Constants.ARTICLE_URL;
  late String popular_uri = base_uri + Constants.POPULAR_POST_URL;

  Future<PostModel> getPost() async {
    if (kDebugMode) {
      print(post_model_uri);
    }
    var postList = PostModel();
    try {
      var response = await http.get(
        Uri.parse(post_model_uri),
        headers: {
          'Content-Type': 'application/json',
          Constants.API_KEY_VALUE['key'].toString(): Constants.API_KEY_VALUE['value'].toString(),
        },
      );
      if (kDebugMode) {

      print(response.headers);
      }
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
          postList = PostModel(
            count: int.parse(result['count'].toString()),
            next: result['next'] as String,
            previous: result['previous'] as String?,
            results: (result['results'] as List).map((e) => ResultsModel.fromJson(e)).toList(),
          );
        if (kDebugMode) {
          print(postList);
        }
        return postList;
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return postList;
    }
  }
}
