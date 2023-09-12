import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pages.dart';

class PagesApiController {
  Future<List<Data>> fetchQuranPages(int pageNumber) async {
    try {
      final response =
          await http.get(Uri.parse("http://api.alquran.cloud/v1/page/1"));
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        final dataJsonArray = jsonResponse["data"]["ayahs"] as List;
        var result = dataJsonArray.map((e) => Data.fromJson(e)).toList();

        return result;
      } else {
        throw Exception('Failed to fetch Quran pages');
      }
    } catch (e) {
      throw Exception('Failed to fetch Quran pages: $e');
    }
  }
}
