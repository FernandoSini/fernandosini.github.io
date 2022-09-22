import 'package:flutter/material.dart';
import 'package:mysite/web/routes/web_routes.dart';
import 'package:mysite/web/ui/screens/error/web_error_screen.dart';
import 'package:mysite/web/ui/screens/landing/landing_screen.dart';
import 'package:qlevar_router/qlevar_router.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    initDefaultConfig();
    return MaterialApp.router(
      useInheritedMediaQuery: true,
      routerDelegate: QRouterDelegate(
        WebRoutes().routes,
        withWebBar: true,
      ),
      routeInformationParser: QRouteInformationParser(),
      debugShowCheckedModeBanner: false,
      title: "FernandoSini",
      theme: ThemeData(
        primaryColor: Colors.black,
        scrollbarTheme: ScrollbarThemeData(
            thumbVisibility: MaterialStateProperty.all(true),
            trackVisibility: MaterialStateProperty.all(true),
            thickness: MaterialStateProperty.all(10),
            thumbColor: MaterialStateProperty.all(Colors.white),
            interactive: true),
      ),
    );
  }

  void initDefaultConfig() {
    QR.settings.enableDebugLog = false;
    QR.settings.enableLog = false;
    QR.setUrlStrategy();
    QR.settings.initPage = LandingScreen();
    QR.settings.notFoundPage = QRoute(
        path: "/error",
        name: "error",
        builder: () => WebErrorScreen(),
        pageType: QFadePage(
          transitionDurationMilliseconds: 1000,
        ));
  }
}
