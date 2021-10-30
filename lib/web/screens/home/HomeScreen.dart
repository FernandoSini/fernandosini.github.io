import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'dart:html' as html;

import 'package:mysite/web/screens/about/AboutMeScreen.dart';
import 'package:mysite/web/widgets/top_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> showEmailDialog() async {
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
  }

  bool disableText = false;
  final String? linkedinUrl =
      "https://www.linkedin.com/in/fernando-fazio-sinigaglia-58179211b/";
  final String? email = "sinigagliafernando@gmail.com";
  final String? githubLink = "https://github.com/fernandosini";
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double sizeHeight = 80;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(sizeHeight),
        child: TopBar(
          screenSizeHeight: sizeHeight,
        ),
      ),
      body: Container(
        height: screenSize.height,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                color: Colors.transparent,
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 150),
                        child: Text(
                          "Welcome to my personal site",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "I'm Fernando Sinigaglia",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text(
                          "Contact me by:",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: TextButton(
                              child: Text(
                                "in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                html.window.open(linkedinUrl!, "");
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: TextButton(
                              child: Icon(
                                Icons.email,
                                size: 50,
                              ),
                              onPressed: () async {
                                await showEmailDialog();
                              },
                              style:
                                  TextButton.styleFrom(primary: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: TextButton(
                              child: Icon(
                                FontAwesome.github_circled,
                                size: 50,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                html.window.open(githubLink!, "");
                              },
                              style:
                                  TextButton.styleFrom(primary: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
