import 'dart:convert';

import 'package:programming_language_test/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaverService {
  SharedPreferences _prefs;
  final String _key = 'saved_result_list';

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<bool> saveResult(List<SavedResult> resultList) async {
    try {
      List<String> stringList =
          resultList.map((e) => jsonEncode(e.toJson())).toList();
      await _prefs.setStringList(_key, stringList);
      return true;
    } on Exception catch (e) {
      rethrow;
    }
  }

  List<SavedResult> getSavedResultList() {
    try {
      var stringList = _prefs.getStringList(_key);
      if (stringList == null) {
        return List<SavedResult>();
      }

      List<SavedResult> savedResult = [];
      for (var string in stringList) {
        savedResult.add(SavedResult.fromJson(jsonDecode(string)));
      }
      return savedResult;
    } on Exception catch (e) {
      rethrow;
    }
  }
}
