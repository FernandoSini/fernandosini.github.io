import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import 'package:mysite/web/widgets/top_bar.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  /* Future<void> showEmailDialog() async {
    return showDialog(
      context: context,
      builder: (_) {
        return Container(
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text("Info"),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 100, bottom: 10),
                child: TextButton(
                  child: Text(
                    "Close",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              )
            ],
            content: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Icon(
                    Icons.email,
                    color: Colors.black,
                    size: 80,
                  ),
                  Text("$email"),
                ],
              ),
            ),
          ),
        );
      },
    );
  } */
  Future<void> showEmailDialog() async {
    showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      transitionBuilder: (context, a1, a2, widget) {
        return Transform.scale(
          scale: a1.value,
          child: Opacity(
            opacity: a1.value,
            child: Container(
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                title: Text("Info"),
                actions: [
                  Container(
                    margin: EdgeInsets.only(right: 100, bottom: 10),
                    child: TextButton(
                      child: Text(
                        "Close",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                ],
                content: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  margin: EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 80,
                      ),
                      Text("$email"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      transitionDuration: Duration(milliseconds: 200),
      barrierDismissible: false,
      barrierLabel: '',
      context: context,
      pageBuilder: (context, animation1, animation2) {
        return Text("");
      },
    );
  }

  bool disableText = false;
  final String? linkedinUrl =
      "https://www.linkedin.com/in/fernando-fazio-sinigaglia-58179211b/";
  final String? email = "sinigagliafernando@gmail.com";
  final String? githubLink = "https://github.com/fernandosini";
  final String? instagramLink = "https://www.instagram.com/fernandoosini";
  List<int> dynamicList = List.from(
    [1, 2, 3],
  );

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double sizeHeight = 60;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(sizeHeight),
        child: TopBar(
          screenSizeHeight: sizeHeight,
          // color: Colors.blue,
          radius: null,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: ListView(
          padding: EdgeInsets.only(top: 0),
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize.height,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("./images/eu.jpeg"),
                      fit: BoxFit.fill,

                      /*colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken),*/
                    ),
                  ),
                ),
                Container(
                  height: screenSize.height,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Color(0xff0000A8).withOpacity(1),
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      stops: [0.3, 0.8],
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                        ),
                        Container(
                          height: screenSize.height * 0.7,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 60,
                              ),
                              Container(
                                height: screenSize.height,
                                padding: EdgeInsets.only(
                                    top: screenSize.height / 12),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 5),
                                      child: TextButton(
                                        child: Text(
                                          "in",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 35,
                                              color: Colors.white),
                                        ),
                                        onPressed: () {
                                          html.window.open(linkedinUrl!, "");
                                        },
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 20, right: 20, bottom: 10),
                                      child: TextButton(
                                        child: Icon(
                                          Icons.email,
                                          size: 35,
                                        ),
                                        onPressed: () async {
                                          await showEmailDialog();
                                        },
                                        style: TextButton.styleFrom(
                                            foregroundColor: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: 20, left: 20, bottom: 10),
                                      child: TextButton(
                                        child: Icon(
                                          FontAwesome.github_circled,
                                          size: 35,
                                          color: Colors.white,
                                        ),
                                        onPressed: () async {
                                          html.window.open(githubLink!, "");
                                        },
                                        style: TextButton.styleFrom(
                                            foregroundColor: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: 20, left: 20, bottom: 10),
                                      child: TextButton(
                                        child: Icon(
                                          FontAwesome.instagram,
                                          size: 35,
                                          color: Colors.white,
                                        ),
                                        onPressed: () async {
                                          html.window.open(instagramLink!, "");
                                        },
                                        style: TextButton.styleFrom(
                                            foregroundColor: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Container(
                                height: screenSize.height,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: AnimatedTextKit(
                                        repeatForever: true,
                                        isRepeatingAnimation: true,
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                              "Welcome to my personal site",
                                              speed: Duration(milliseconds: 80),
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 35,
                                                fontFamily:
                                                    GoogleFonts.fruktur()
                                                        .fontFamily,
                                              ),
                                              textAlign: TextAlign.start),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: AnimatedTextKit(
                                        repeatForever: true,
                                        isRepeatingAnimation: true,
                                        animatedTexts: [
                                          TypewriterAnimatedText(
                                            "I'm Fernando Sinigaglia",
                                            speed: Duration(milliseconds: 80),
                                            textStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontFamily: GoogleFonts
                                                        .londrinaOutline()
                                                    .fontFamily),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            //foregroundColor: Color(0xffF00C7F5),
                                            foregroundColor: Color(0xffF5C800),
                                            side: BorderSide(
                                              // color: Color(0xffF5C800),
                                              width: 3,
                                              //color: Color(0xffF00C7F5),
                                              color: Color(0xffF5C800),
                                            )),
                                        onPressed: () {},
                                        child: Text(
                                          "Contact me",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: GoogleFonts
                                                    .montserratAlternates()
                                                .fontFamily,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              /*Container(
                                margin: EdgeInsets.only(top: 20, bottom: 20, right: 40),
                                child: Text(
                                  "Contact me by:",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),*/
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: screenSize.height,
              width: screenSize.width,
              // color: Color(0xff0000F5),
              //   color: Color(0xffF5C800),
              color: Color(0xff0000A8),

              child: SizedBox(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Text(
                            "My Stack",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              //
                              //color: Color(0xffF00C7F5),
                              // color: Color(0xff000a8),
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 3,
                              //..color = Color(0xffF00C7F5),
                              //..color = Color(0xffF5C800),
                              fontFamily:
                                  GoogleFonts.montserratAlternates().fontFamily,
                            ),
                          ),
                          Text(
                            "My Stack",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              //color: Color(0xffF00C7F5),
                              color: Color(0xffF5C800),
                              fontFamily:
                                  GoogleFonts.montserratAlternates().fontFamily,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: screenSize.width * 0.8,
                        height: screenSize.height * 0.75,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0.5),
                                spreadRadius: 5,
                                color: Color(0xffF00C7F5),
                              )
                            ],
                            border: Border.all(
                              color: Color(0xff0000A8),
                              width: 3,
                            )),
                        padding:
                            EdgeInsets.symmetric(vertical: 60, horizontal: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: screenSize.height,
                              width: screenSize.width * 0.1,
                              child: Column(
                                children: [
                                  Text(
                                    "Web/mobile",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      //color: Color(0xffF00C7F5),
                                      fontFamily:
                                          GoogleFonts.montserrat().fontFamily,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(
                                      "./images/flutter-logo.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: screenSize.height,
                              width: screenSize.width * 0.1,
                              child: Column(
                                children: [
                                  Text(
                                    "Back-end",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      //color: Color(0xffF00C7F5),
                                      fontFamily:
                                          GoogleFonts.montserrat().fontFamily,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 80,
                                    width: 100,
                                    child: Image.asset(
                                      "./images/go.png",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: screenSize.height,
                              width: screenSize.width * 0.1,
                              child: Column(
                                children: [
                                  Text(
                                    "Back-end",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      //color: Color(0xffF00C7F5),
                                      fontFamily:
                                          GoogleFonts.montserrat().fontFamily,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 60,
                                    width: 100,
                                    child: Image.asset(
                                      "./images/node.png",
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: screenSize.height,
                              width: screenSize.width * 0.1,
                              child: Column(
                                children: [
                                  Text(
                                    "Back-end",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      //color: Color(0xffF00C7F5),
                                      fontFamily:
                                          GoogleFonts.montserrat().fontFamily,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset(
                                      "./images/spring.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: screenSize.height,
              width: screenSize.width,
              // color: Color(0xff0000F5),
              //   color: Color(0xffF5C800),
              color: Color(0xff0000A8),

              child: SizedBox(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Text(
                            "What you can expect from me",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              //
                              //color: Color(0xffF00C7F5),
                              // color: Color(0xff000a8),
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 3,
                              //..color = Color(0xffF00C7F5),
                              //..color = Color(0xffF5C800),
                              fontFamily:
                                  GoogleFonts.montserratAlternates().fontFamily,
                            ),
                          ),
                          Text(
                            "What you can expect from me",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              //color: Color(0xffF00C7F5),
                              color: Color(0xffF5C800),
                              fontFamily:
                                  GoogleFonts.montserratAlternates().fontFamily,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: screenSize.width * 0.8,
                        height: screenSize.height * 0.75,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0.5),
                                spreadRadius: 5,
                                color: Color(0xffF00C7F5),
                              )
                            ],
                            border: Border.all(
                              color: Color(0xff0000A8),
                              width: 3,
                            )),
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "What you can expect from me",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                //color: Color(0xffF00C7F5),

                                /*  fontFamily: GoogleFonts.montserratAlternates()
                                    .fontFamily, */
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: screenSize.height * 0.5,
                                  width: screenSize.width * 0.1,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Beautiful apps",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          //color: Color(0xffF00C7F5),
                                          fontFamily: GoogleFonts.montserrat()
                                              .fontFamily,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Icon(
                                          FontAwesome5.mobile_alt,
                                          color: Color(0xff0000a8),
                                          size: 80,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: screenSize.height * 0.5,
                                  width: screenSize.width * 0.1,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Responsive Layouts",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          //color: Color(0xffF00C7F5),
                                          fontFamily: GoogleFonts.montserrat()
                                              .fontFamily,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 80,
                                        width: 100,
                                        child: Icon(
                                          Icons.computer_outlined,
                                          size: 100,
                                          color: Color(0xff0000a8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: screenSize.height * 0.5,
                                  width: screenSize.width * 0.1,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Back-end",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          //color: Color(0xffF00C7F5),
                                          fontFamily: GoogleFonts.montserrat()
                                              .fontFamily,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 60,
                                        width: 100,
                                        child: Image.asset(
                                          "./images/node.png",
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: screenSize.height * 0.5,
                                  width: screenSize.width * 0.1,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Back-end",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          //color: Color(0xffF00C7F5),
                                          fontFamily: GoogleFonts.montserrat()
                                              .fontFamily,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Image.asset(
                                          "./images/spring.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
