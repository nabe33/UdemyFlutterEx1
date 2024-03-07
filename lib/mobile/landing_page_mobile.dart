import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nabe33_portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
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
    var widthDevice = MediaQuery.of(context).size.width;
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
                Wrap(
                  runSpacing: 20.0,
                  spacing: 20.0,
                  alignment: WrapAlignment.center,
                  children: [
                    SansBold("Contact me", 35.0),
                    TextForm(
                      containerWidth: widthDevice / 1.4,
                      text: "First Name",
                      hintText: "Please type your first name",
                    ),
                    TextForm(
                      containerWidth: widthDevice / 1.4,
                      text: "Last Name",
                      hintText: "Please type your last name",
                    ),
                    TextForm(
                      containerWidth: widthDevice / 1.4,
                      text: "Email",
                      hintText: "Please type your Email",
                    ),
                    TextForm(
                      containerWidth: widthDevice / 1.4,
                      text: "Phone Number",
                      hintText: "Please type your phone number",
                    ),
                    TextForm(
                        text: "Message",
                        containerWidth: widthDevice / 1.4,
                        hintText: "Please type your message",
                        maxLines: 10),
                    MaterialButton(
                        elevation: 20.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 60.0,
                        minWidth: widthDevice / 2.2,
                        color: Colors.tealAccent,
                        child: SansBold("Submit", 20.0),
                        onPressed: () {})
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}