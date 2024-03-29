import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';
import 'routes.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter framework初期化を確認
  setPathUrlStrategy(); //?

  // GoogleFonts
  GoogleFonts.config.allowRuntimeFetching = false;

  // 以下はUdemy動画とは異なる今のFirebaseのやり方
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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