import 'package:flutter/material.dart';

class Togglebg {
  final Color bgColor;
  final bool isLightMode;

  Togglebg({required this.bgColor, required this.isLightMode});

  Togglebg copyWith({Color? newbgColor, bool? newIsLightMode}) {
    return Togglebg(
      bgColor: newbgColor ?? bgColor,
      isLightMode: newIsLightMode ?? isLightMode,
    );
  }
}
