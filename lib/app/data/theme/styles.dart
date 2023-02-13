import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';import 'package:sutexapp/app/data/theme/theme_enums.dart';
// import 'package:mybarel/core/theme/theme_enums.dart';



class Styles {
  // light
  static TextStyle light(
    double size,
    Color color, {
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
    FontFamily? font = FontFamily.roboto,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w300,
      fontFamily: font?.name,
      color: color,
      height: 1.25,
      fontSize: size.sp,
      fontStyle: fontStyle,
      decoration: textDecoration,
    );
  }

  // regular
  static TextStyle regular(
    double size,
    Color color, {
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
    FontFamily? font = FontFamily.roboto,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: font?.name,
      color: color,
      height: 1.25,
      fontStyle: fontStyle,
      decoration: textDecoration,
      fontSize: size.sp,
    );
  }

  // medium
  static TextStyle medium(
    double size,
    Color ?color, {
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
    FontFamily? font = FontFamily.roboto,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: font?.name,
      color: color,
      height: 1.25,
      decoration: textDecoration,
      fontSize: size.sp,
    );
  }

  // semibold
  static TextStyle semibold(
    double size,
    Color color, {
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
    FontFamily? font = FontFamily.roboto,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: font?.name,
      color: color,
      height: 1.25,
      decoration: textDecoration,
      fontSize: size.sp,
    );
  }

  // bold
  static TextStyle bold(
    double size,
    Color color, {
    FontStyle? fontStyle,
    TextDecoration? textDecoration,
    FontFamily? font = FontFamily.roboto,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: font?.name,
      color: color,
      height: 1.25,
      decoration: textDecoration,
      fontSize: size.sp,
    );
  }


  // Semplicita pro bold
  static TextStyle proBold(
      double size,
      Color color, {
        FontStyle? fontStyle,
        TextDecoration? textDecoration,
        FontFamily? font = FontFamily.semplicita,
      }) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: font?.name,
      color: color,
      height: 1.25,
      decoration: textDecoration,
      fontSize: size.sp,
    );
  }
}
