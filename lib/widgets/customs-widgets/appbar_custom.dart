import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

AppBar appBarCustom(String title, bool actionsEnabled) {
    return AppBar(
      title: Text(title),
      elevation: 0,
      actions: actionsEnabled ? [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => {print('ICONS - SHOPPING')},
                child: const Icon(Icons.shopping_bag_outlined, color: ColorsViews.colorWhiteGeneral)
                ), 
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () => {print('ICONS - NOTIFICACION')},
                child: const Icon(Icons.notifications, color: ColorsViews.colorWhiteGeneral)
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () => {print('ICONS - MANAGE ACCOUNTS')},
                child: const Icon(Icons.manage_accounts_outlined, color: ColorsViews.colorWhiteGeneral)
              )
            ]),
        )
      ]:
      null,
      backgroundColor: ColorsViews.textBoarding,
      foregroundColor: ColorsViews.textPink,
      titleTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    );
  }