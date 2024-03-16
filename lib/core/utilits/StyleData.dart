import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

abstract class StylesData {
  static const titleStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.06,
      fontStyle: FontStyle.normal,
      fontSize: 24);

  static const descStyle = TextStyle(
      color: steel,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal,
      fontSize: 12);

  static const titleItemStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    fontStyle: FontStyle.normal,
  );

  static const descItemStyle = TextStyle(
      color: steel,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 10);

  static const nameSallerStyle = TextStyle(fontSize: 11, color: Colors.white);

  static const mainTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const favSellerNameStyle = TextStyle(
    fontSize: 10,
    color: Colors.black,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.underline,
  );
  static const favSellerStyle = TextStyle(
    fontSize: 10,
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );
}
