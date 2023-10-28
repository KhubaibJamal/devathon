import 'package:devathon/size_config.dart';
import 'package:flutter/material.dart';

const textFieldColor = Color(0xFFedf8ff);
const textFieldBorderColor = Color(0xFFd1eaff);
const iconColor = Color(0xFFc0e0ff);
const purpleColor = Color(0xFFb28cff);
const whiteColor = Color(0xFFFFFFFF);

final defaultTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: getProportionateScreenWidth(24),
);

InputDecoration customInputDecoration({
  required String hintText,
  required IconData icon,
}) {
  return InputDecoration(
    hintText: hintText,
    suffixIcon: Icon(
      icon,
      color: iconColor,
      size: 28,
    ),
    filled: true,
    fillColor: textFieldColor,
    errorBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder(),
  );
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      color: textFieldBorderColor,
      width: 1.5,
    ),
    borderRadius: BorderRadius.circular(18),
  );
}
