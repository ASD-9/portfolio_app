import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:portfolio_app/models/personal_data_model.dart';
import 'package:http/http.dart' as http;

class AppData {
  AppData._privateConstructor();
  static final AppData _instance = AppData._privateConstructor();
  static AppData get instance => _instance;

  late PersonalDataModel _personalData;
  bool _isInit = false;

  PersonalDataModel get personalData => _personalData;
  bool get isInit => _isInit;

  Future<void> init() async {
    if (isInit) return;
    try {
      final uri = Uri.parse(dotenv.env["API_BASE_URL"] ?? "");
      final response = await http.get(uri);
      final data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        _personalData = PersonalDataModel.fromJson(data["data"]);
        _isInit = true;
      } else {
        throw Exception("${data["message"]} (${response.statusCode})");
      }
    } catch (e) {
      throw Exception("Erreur lors du chargement des données: $e");
    }
  }
}
