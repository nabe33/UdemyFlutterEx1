import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  //

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

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
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          // About me, 1st section
          SizedBox(
            height: 500.0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SansBold("About Me", 40.0),
                        SizedBox(height: 15.0),
                        Sans(
                            "I am a University professor. I also am currently working as a freelance software engineer.",
                            15.0),
                        Sans(
                            "I strive to ensure that the Web3 is accessible to everyone.",
                            15.0),
                        Sans(
                            "My major covers from IT to social science.", 15.0),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            tealContainer("Flutter"),
                            SizedBox(width: 7.0),
                            tealContainer("Firebase"),
                            SizedBox(width: 7.0),
                            tealContainer("Android"),
                            SizedBox(width: 7.0),
                            tealContainer("iOS"),
                            SizedBox(width: 7.0),
                            tealContainer("Windows"),
                          ],
                        )
                      ],
                    ),
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
                ]),
          ),
          // Web development, 2nd section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWeb(
                imagePath: "assets/WebL.png",
                text: "",
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("Web development", 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                        "I believe Web gives freedom to everyone and strive for Web development.",
                        15.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          // App development, 3rd section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("App development", 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                        "I think app developers are magician of the IT world and I like app development.",
                        15.0),
                  ],
                ),
              ),
              AnimatedCardWeb(
                imagePath: "assets/app.png",
                text: "",
                height: 250.0,
                width: 250.0,
                reverse: true,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          // Back-end development, 4th section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWeb(
                imagePath: "assets/firebase.png",
                text: "",
                height: 100.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: [
                    SansBold("Back-end development", 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                        "Do you want back-end to be highly scalable and secure? Let's have a conversation on how I can help you with that.",
                        15.0),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}