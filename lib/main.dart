import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'routes.dart';
import 'web/landing_page_web.dart';
import 'mobile/landing_page_mobile.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}