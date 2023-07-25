import 'dart:developer';

import 'package:hoid/models/RssFeed.dart';
import 'package:http/http.dart' as http;

class RssService {
  Future<RssFeed?> GetNews(rssUrl) async {
    try {
      var url = Uri.parse(rssUrl);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return RssFeed(body: response.body);
      } else {
        throw Exception('Status Code diferente de 200');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
