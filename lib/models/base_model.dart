import 'package:flutter/material.dart';

abstract class BaseModel {
  int id;
  String text;

  BaseModel({
    @required this.id,
    @required this.text,
  });
}
