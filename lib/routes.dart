import 'package:flutter/material.dart';

import 'mobile/contact_mobile.dart';
import 'mobile/landing_page_mobile.dart';
import 'web/contact_web.dart';
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
      case '/contact':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const ContactWeb();
            } else {
              return const ContactMobile();
            }
          }),
        );
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