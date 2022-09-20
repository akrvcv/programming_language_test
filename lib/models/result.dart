import 'package:flutter/material.dart';
import 'package:programming_language_test/models/base_model.dart';

class Result extends BaseModel {
  Result({
    @required int id,
    @required String text,
  }) : super(
          id: id,
          text: text,
        );
}
