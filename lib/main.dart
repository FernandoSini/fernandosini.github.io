import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mysite/web/screens/about/AboutMeScreen.dart';
import 'package:mysite/web/screens/home/HomeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "FernandoSsini",
    theme: ThemeData(
      primaryColor: Colors.black,
      scrollbarTheme: ScrollbarThemeData(
          isAlwaysShown: true,
          showTrackOnHover: true,
          thickness: MaterialStateProperty.all(10),
          thumbColor: MaterialStateProperty.all(Colors.white),
          interactive: true),
    ),
    initialRoute: "/home",
    onGenerateRoute: kIsWeb
        ? (settings) {
            switch (settings.name) {
              case "/home":
                return PageRouteBuilder(
                  settings: settings,
                  pageBuilder: (context, animation1, animation2) =>
                      HomeScreen(),
                );
              case "/about":
                return PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      AboutMeScreen(),
                );

              default:
            }
          }
        : null,
  ));
}
