import 'dart:convert';
import 'package:flutter/services.dart';
sealed class DataSource {
  static Future<List<dynamic>> readJson() async {
    final dataSource = await rootBundle.loadString("assets/json/product.json");
    return jsonDecode(dataSource);
  }

}