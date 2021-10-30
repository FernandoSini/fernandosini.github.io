import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AboutMeScreen extends StatefulWidget {
  @override
  _AboutMeScreenState createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                        margin: EdgeInsets.only(top: 100, left: 30, right: 30),
                        padding: EdgeInsets.only(
                            left: 10, top: 10, bottom: 10, right: 10),
                        child: Text(
                          "Hi. I'm Fernando Sinigaglia.\n" +
                              "I'm ${new DateTime.now().year - new DateFormat("dd/MM/yyyy").parse("16/04/1997").year} years.\n" +
                              "I did an internship at IBM Brazil from 13/08/2019 to 30/06/2020\n" +
                              "I'm Looking for jobs as flutter developer.\n" +
                              "I have bachelor in Information System by: ESPM (Escola Superior de Propaganda e Marketing or The Higher School of Advertising and Marketing) in Brazil. \n" +
                              "Programming is currently my passion.",
                          softWrap: true,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        // decoration: BoxDecoration(
                        //   border: Border.all(color: Colors.black),
                        //   borderRadius: BorderRadius.circular(30),
                        //   color: Colors.white,
                        //   boxShadow: [
                        //     BoxShadow(
                        //       offset: Offset(0, 0),
                        //       color: Colors.white70,
                        //     ),
                        //   ],
                        // ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
