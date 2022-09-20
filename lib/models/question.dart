import 'package:flutter/material.dart';
import 'package:programming_language_test/models/base_model.dart';

class Question extends BaseModel {
  List<int> anserListId;

  Question({
    @required int id,
    @required String text,
    @required this.anserListId,
  }) : super(
          id: id,
          text: text,
        );

  String get text => this.text + '?';
}
