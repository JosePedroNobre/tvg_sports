import 'package:flutter/material.dart';

TextStyle inter({
  color = Colors.white,
  TextDecoration? decoration,
  FontWeight? fontWeight,
  double? fontSize,
}) {
  return TextStyle(
    fontFamily: 'Inter',
    fontSize: fontSize,
    fontWeight: fontWeight ?? FontWeight.w400,
    color: color,
    decoration: decoration,
  );
}
