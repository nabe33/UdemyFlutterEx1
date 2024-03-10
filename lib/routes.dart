import 'package:flutter/material.dart';

import 'common/blog.dart';
import 'mobile/about_mobile.dart';
import 'mobile/contact_mobile.dart';
import 'mobile/landing_page_mobile.dart';
import 'mobile/works_mobile.dart';
import 'web/about_web.dart';
import 'web/contact_web.dart';
import 'web/landing_page_web.dart';
import 'web/works_web.dart';

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
      case '/about':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const AboutWeb();
            } else {
              return const AboutMobile();
            }
          }),
        );
      case '/blog':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => Blog(),
        );
      case '/works':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const WorksWeb();
            } else {
              return const WorksMobile();
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