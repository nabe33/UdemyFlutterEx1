import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  //

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
        endDrawer: DrawerMobile(),
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