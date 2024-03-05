import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/nabe.png'),
              ),
            ),
            SizedBox(height: 15.0),
            SansBold("Takayuki Watanabe", 30.0),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://www.instagram.com/wata7be3/")),
                  icon: SvgPicture.asset(
                    'assets/instagram.svg',
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://www.twitter.com/nabe33/")),
                  icon: SvgPicture.asset(
                    'assets/twitter.svg',
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async => await launchUrl(
                      Uri.parse("https://www.github.com/nabe33/")),
                  icon: SvgPicture.asset(
                    'assets/github.svg',
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
              ],
            ),
          ])),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
                children: [
                  Spacer(flex: 3),
                  TabsWeb(
                    title: "Home",
                    route: "/",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "Works",
                    route: "/works",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "Blog",
                    route: "/blog",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "About",
                    route: "/about",
                  ),
                  Spacer(),
                  TabsWeb(
                    title: "Contact",
                    route: "/contact",
                  ),
                  Spacer(),
                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 30.0),
              SansBold("Contact Me", 40.0),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextForm(
                        containerWidth: 350,
                        text: "First Name",
                        hintText: "Please type your first name",
                      ),
                      SizedBox(height: 15.0),
                      TextForm(
                        containerWidth: 350,
                        text: "Email",
                        hintText: "Please type your email address",
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextForm(
                        containerWidth: 350,
                        text: "Last Name",
                        hintText: "Please type your last name",
                      ),
                      SizedBox(height: 15.0),
                      TextForm(
                        containerWidth: 350,
                        text: "Phone Number",
                        hintText: "Please type your phone number",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              TextForm(
                  text: "Message",
                  containerWidth: widthDevice / 1.5,
                  hintText: "Please type your message",
                  maxLines: 10),
              SizedBox(height: 20.0),
              MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                  onPressed: () {}),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
      //
/*
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: const Row(
          children: [
            Spacer(flex: 3),
            TabsWeb(
              title: "Home",
              route: "/",
            ),
            Spacer(),
            TabsWeb(
              title: "Works",
              route: "/works",
            ),
            Spacer(),
            TabsWeb(
              title: "Blog",
              route: "/blog",
            ),
            Spacer(),
            TabsWeb(
              title: "About",
              route: "/about",
            ),
            Spacer(),
            TabsWeb(
              title: "Contact",
              route: "/contact",
            ),
            Spacer(),
          ],
        ),
      ),
*/
/*
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
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Flutter", 15),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("UX design", 15),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Human-centered design", 15),
                        ),
                        SizedBox(width: 7.0),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0)),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Web design", 15),
                        ),
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
                  SansBold("Wahat I do?", 40.0),
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
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact Me", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          ContainerWidth: 350,
                          text: "First Name",
                          hintText: "Please type your first name",
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          ContainerWidth: 350,
                          text: "Email",
                          hintText: "Please type your email address",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          ContainerWidth: 350,
                          text: "Last Name",
                          hintText: "Please type your last name",
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          ContainerWidth: 350,
                          text: "Phone Number",
                          hintText: "Please type your phone number",
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                    text: "Message",
                    ContainerWidth: widthDevice / 1.5,
                    hintText: "Please type your message",
                    maxLines: 10),
                MaterialButton(
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 60.0,
                    minWidth: 200.0,
                    color: Colors.tealAccent,
                    child: SansBold("Submit", 20.0),
                    onPressed: () {})
              ],
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
*/
    );
  }
}