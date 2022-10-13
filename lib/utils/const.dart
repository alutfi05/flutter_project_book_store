import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppConstants {
  static Color primaryColor = const Color(0xFF1BBA85);
  static Color headingColor = const Color(0xFF1c1f35);
  static Color backgroundColor = const Color(0XFFEEEEEE);
  static Color bodyColor = const Color(0XFF6C757d);
  static Color borderColor = const Color(0xFFEBEBEB);
}

class GlobalFunction {
  String removeDecimalZeroFormat(double v) {
    NumberFormat formatter = NumberFormat();
    formatter.minimumFractionDigits = 0;
    formatter.maximumFractionDigits = 2;
    return formatter.format(v);
  }
}
