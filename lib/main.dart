import 'package:flutter/material.dart';
import 'web/landing_page_web.dart';
import 'mobile/landing_page_mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return const LandingPageWeb();
          } else {
            return const LandingPageMobile();
          }
        },
      ),
    );
  }
}