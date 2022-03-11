import 'package:flutter/material.dart';
import 'package:mvp_all/pages/login_screen.dart';
import 'package:mvp_all/splash/splas_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: 'home',

      routes: {
        'register': (context) => const LoginScreen(),
        'home':(context) => const SplashView()
      },
    );
  }
}
