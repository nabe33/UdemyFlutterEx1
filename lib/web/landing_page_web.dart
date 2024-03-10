import 'package:flutter/material.dart';
import '../components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width; // need it?
    return Scaffold(
      drawer: DrawerWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: TabsWebList(),
      ),
      body: ListView(
        children: [
          // 1st section
          Container(
            height: heightDevice - 56.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        15,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    SansBold("Takayuki Watanabe", 55.0),
                    Sans("University Professor", 30.0),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20.0),
                        Sans("nabe@lab.twcu.ac.jp", 15.0)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(width: 20.0),
                        Sans("+81 90 1234 5678", 15.0)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(width: 20.0),
                        Sans("1517-202, Takao, Hachioji, Tokyo, JAPAN", 15.0)
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundImage:
                          const AssetImage('assets/nabe-circle.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 2nd section
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "background.png",
                  height: widthDevice / 4.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About Me", 40.0),
                    SizedBox(height: 15.0),
                    Sans(
                        "I am a university professor. My interest is social design of Web3.",
                        15),
                    Sans(
                        "I strive to ensure that the Web3 is accessible to everyone.",
                        15),
                    Sans("My major covers from IT to social science.", 15),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        tealContainer("Flutter"),
                        SizedBox(width: 7.0),
                        tealContainer("Firebase"),
                        SizedBox(width: 7.0),
                        tealContainer("Human-centered design"),
                        SizedBox(width: 7.0),
                        tealContainer("Web design"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          // 3rd section
          Container(
              height: heightDevice / 1.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold("What I do?", 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCardWeb(
                        imagePath: "assets/webL.png",
                        text: "Web development",
                      ),
                      AnimatedCardWeb(
                          imagePath: "assets/app.png",
                          text: "App development",
                          fit: BoxFit.contain,
                          reverse: true),
                      AnimatedCardWeb(
                        imagePath: "assets/firebase.png",
                        text: "Back-end development",
                      ),
                    ],
                  )
                ],
              )),
          // 4th section
          SizedBox(height: 15.0),
          ContactFormWeb(),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}