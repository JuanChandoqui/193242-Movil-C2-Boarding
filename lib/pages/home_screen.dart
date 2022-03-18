import 'package:flutter/material.dart';

import '../widgets/login-widgets/buttons_register_widget.dart';
import '../widgets/login-widgets/icon-widget.dart';
import '../widgets/login-widgets/text_buttons_user_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 24),
                    child: IconWidget(),
                  ),
                  SizedBox(height: 100,),
                  ButtonsRegister(),
                  SizedBox(height: 90,),
                  TextButtonsUsers()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}