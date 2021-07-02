import 'dart:async';

import 'package:getx_project_post/model/Posts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Services {

  Future<List<Posts>> getallposts() async {
    try {
      var response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"))
          .timeout(const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });

      if (response.statusCode == 200) {
        List jsonResponse = convert.jsonDecode(response.body);
        return jsonResponse.map((e) => new Posts.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

}