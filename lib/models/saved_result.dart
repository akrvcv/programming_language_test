import 'package:flutter/material.dart';
import 'models.dart';

class SavedResult extends Result {
  int resultId;
  String date;

  SavedResult({
    @required id,
    @required this.resultId,
    @required text,
    @required this.date,
  }) : super(
          id: id,
          text: text,
        );

  SavedResult.fromResult(Result result) {
    this.id = DateTime.now().millisecond;
    this.resultId = result.id;
    this.text = result.text;
    this.date = _getCurDate();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = Map<String, dynamic>();
    json['id'] = this.id;
    json['resultId'] = this.resultId;
    json['text'] = this.text;
    json['date'] = this.date;
    return json;
  }

  SavedResult.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.resultId = json['resultId'];
    this.text = json['text'];
    this.date = json['date'];
  }

  String _getCurDate() => DateTime.now().toString();
}
