import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
          borderRadius: BorderRadius.circular(5.0)),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 35.0, color: Colors.black),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2.0),
                  ),
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/nabe.png'),
                  ),
                ),
              ),
              TabsMobile(text: "Home", route: "/"),
              SizedBox(height: 20.0),
              TabsMobile(text: "Works", route: "/works"),
              SizedBox(height: 20.0),
              TabsMobile(text: "Blog", route: "/blog"),
              SizedBox(height: 20.0),
              TabsMobile(text: "About", route: "/about"),
              SizedBox(height: 20.0),
              TabsMobile(text: "Contact", route: "/contact"),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () async => await launchUrl(
                        Uri.parse("https://www.instagram.com/wata7be3/")),
                    icon: SvgPicture.asset(
                      'assets/instagram.svg',
                      color: Colors.black,
                      width: 30.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () async => await launchUrl(
                        Uri.parse("https://www.twitter.com/nabe33/")),
                    icon: SvgPicture.asset(
                      'assets/twitter.svg',
                      color: Colors.black,
                      width: 30.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () async => await launchUrl(
                        Uri.parse("https://www.github.com/nabe33/")),
                    icon: SvgPicture.asset(
                      'assets/github.svg',
                      color: Colors.black,
                      width: 30.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              // Introduction, 1st section
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/nabe-circle.png',
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                // padding: EdgeInsets.only(left: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SansBold("About Me", 35.0),
                      SizedBox(height: 10.0),
                      Sans("I am a University professor.", 15.0),
                      Sans(
                          "I strive to ensure that the Web3 is accessible to everyone.",
                          15.0),
                      Sans("My major covers from IT to social science.", 15.0),
                      SizedBox(height: 15.0),
                      Wrap(
                        spacing: 7.0,
                        runSpacing: 7.0,
                        children: [
                          tealContainer("Flutter"),
                          tealContainer("UX design"),
                          tealContainer("Human-centered design"),
                          tealContainer("Web design"),
                        ],
                      ),
                    ]),
              ),
              SizedBox(height: 40.0),
              // Web development, 2nd section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCardWeb(
                    imagePath: 'assets/webL.png',
                    text: "",
                    width: 200.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("Web Development", 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              Sans(
                  "I believe Web gives freedom to everyone and strive for Web development.",
                  15.0),
              // App development, 3rd section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  AnimatedCardWeb(
                    imagePath: 'assets/app.png',
                    text: "",
                    width: 200.0,
                    reverse: true,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("App Development", 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              Sans(
                  "I think app developers are magician of the IT world and I like app development.",
                  15.0),
              // Backend development, 4th section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  AnimatedCardWeb(
                    imagePath: 'assets/firebase.png',
                    text: "",
                    width: 200.0,
                    height: 100.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("Back-end Development", 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              Sans(
                  "Do you want back-end to be highly scalable and secure? Let's have a conversation on how I can help you with that.",
                  15.0),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}