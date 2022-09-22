import 'package:flutter/material.dart';
import 'base_model.dart';

class Answer extends BaseModel {
  bool isNextStepResult;
  int nextStepId;

  Answer({
    @required int id,
    @required String text,
    @required this.isNextStepResult,
    @required this.nextStepId,
  }) : super(
          id: id,
          text: text,
        );
}
