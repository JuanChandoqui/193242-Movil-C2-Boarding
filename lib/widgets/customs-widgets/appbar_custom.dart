import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

AppBar appBarCustom(String title) {
    return AppBar(
      title: Text(title),
      elevation: 0,
      backgroundColor: ColorsViews.textBoarding,
      foregroundColor: ColorsViews.textPink,
      titleTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    );
  }