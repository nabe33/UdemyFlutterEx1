import 'package:flutter/material.dart';

import 'mobile/landing_page_mobile.dart';
import 'web/landing_page_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const LandingPageWeb();
            } else {
              return const LandingPageMobile();
            }
          }),
        );
      /*case '/mobile':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const LandingPageMobile());*/
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const LandingPageWeb();
            } else {
              return const LandingPageMobile();
            }
          }),
        );
    }
  }
}