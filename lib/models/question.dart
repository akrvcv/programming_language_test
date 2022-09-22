import 'package:flutter/material.dart';
import 'base_model.dart';

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

  String get question => this.text + '?';
}
