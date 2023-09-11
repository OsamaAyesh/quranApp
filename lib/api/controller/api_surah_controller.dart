
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../api_setting.dart';
import '../models/surah.dart';


class SurahApiController {
  Future<List<Surah?>> fetchSurahNames() async {
    try {
      Uri uri = Uri.parse(ApiSetting.surah);
      var response = await http.get(uri);

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);
        var dataJsonArray = jsonResponse["data"] as List;
        return dataJsonArray.map((e) => Surah.fromJson(e)).toList();
      } else {
        // يمكنك إدراج منطق للتعامل مع حالات الأخطاء هنا
        throw Exception('Failed to fetch reservations');
      }
    } catch (e) {
      // يمكنك إدراج منطق للتعامل مع الأخطاء هنا (مثل مشكلات الشبكة)
      throw Exception('Failed to fetch reservations: $e');
    }
  }
}

