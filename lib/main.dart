import 'package:flutter/material.dart';

import 'package:mvp_all/pages/home_screen.dart';
import 'package:mvp_all/pages/menu_view.dart';
import 'package:mvp_all/pages/progress_view.dart';
import 'package:mvp_all/pages/reclame_password_screen.dart';
import 'package:mvp_all/providers/cardservices_provider.dart';
import 'package:mvp_all/providers/textbutton_provider.dart';
import 'package:mvp_all/splash/splas_view.dart';
import 'package:provider/provider.dart';
import 'pages/login_screen.dart';
import 'pages/register_screen.dart';
import 'pages/shop_screen.dart';
import 'providers/checkbox_provider.dart';

void main() {
  runApp( 
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CheckBoxProvider()),
        ChangeNotifierProvider(create: (_) => CardServicesProvider()),
        ChangeNotifierProvider(create: (_) => TextButtonProvider())
      ],
      child: const MyApp())
  );
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

      initialRoute: 'shopscreen',

      routes: {
        'homeview': (context) => const HomeScreen(),
        'home':(context) => const SplashView(),
        'progress':(context) => const ProgressView(),
        'login':(context) => const LoginScreen(),
        'register': (context) => const RegisterScreenScreen(),
        'reclame_password':(context) => const ReclamePasswordScreen(),
        'menuview': (context) => const MenuView(),
        'shopscreen': (context) => const ShopScreen()
      },
    );
  }
}
