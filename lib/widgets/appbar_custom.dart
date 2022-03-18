 import 'package:flutter/material.dart';

AppBar appBarCustom(String title) {
    return AppBar(
      title: Text(title),
      elevation: 0,
      backgroundColor: const Color(0xFF4f1581),
      foregroundColor: const Color(0xfffc1460),
      titleTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    );
  }