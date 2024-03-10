import 'package:flutter/material.dart';
import 'package:nabe33_portfolio/components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
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
        body: ListView(
          children: [
            // Intro, 1st section
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage('assets/nabe-circle.png'),
              ),
            ),
            Padding(
              // padding: const EdgeInsets.only(left: 20.0),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /* CircleAvatar(
                    radius: 117.0,
                    backgroundColor: Colors.tealAccent,
                    child: CircleAvatar(
                      radius: 110.0,
                      backgroundColor: Colors.white,
                      backgroundImage: const AssetImage('assets/nabe-circle.png'),
                    ),
                  ),*/
                  SizedBox(height: 25.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: SansBold(
                          "Hello, I'm",
                          15.0,
                        ),
                      ),
                      // SizedBox(height: 15.0),
                      SansBold("Takayuki Watanabe", 40.0),
                      Sans("University Professor", 20.0),
                    ],
                  ),
                  //
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 3.0,
                        children: [
                          Icon(Icons.email),
                          Icon(Icons.call),
                          Icon(Icons.location_pin),
                        ],
                      ),
                      SizedBox(width: 40.0),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9.0,
                        children: [
                          Sans("nabe@lab.twcu.ac.jp", 15.0),
                          Sans("+81-90-1234-5678", 15.0),
                          Sans("Takao, hachioji, Tokyo, JAPAN", 15.0),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 90.0),
            // About me, 2nd section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              // padding: EdgeInsets.only(left: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About Me", 35.0),
                    Sans("I am a University professor.", 15.0),
                    Sans(
                        "I strive to ensure that the Web3 is accessible to everyone.",
                        15.0),
                    Sans("My major covers from IT to social science.", 15.0),
                    SizedBox(height: 10.0),
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
            SizedBox(height: 60.0),
            // What I do, 3rd section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SansBold("What I do", 35.0),
                AnimatedCardWeb(
                  imagePath: "assets/webL.png",
                  text: "Web development",
                  width: 300.0,
                ),
                SizedBox(height: 35.0),
                AnimatedCardWeb(
                  imagePath: "assets/app.png",
                  text: "App development",
                  fit: BoxFit.contain,
                  reverse: true,
                  width: 300.0,
                ),
                SizedBox(height: 35.0),
                AnimatedCardWeb(
                  imagePath: "assets/firebase.png",
                  text: "Back-end development",
                  width: 300.0,
                ),
                SizedBox(height: 60.0),
                // Contact, 4th section
                ContactFormMobile(),
                SizedBox(height: 20.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}