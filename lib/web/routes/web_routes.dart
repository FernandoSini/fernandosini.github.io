import 'package:mysite/web/routes/web_routes_name.dart';
import 'package:mysite/web/ui/screens/about/AboutMeScreen.dart';
import 'package:mysite/web/ui/screens/home/HomeScreen.dart';
import 'package:mysite/web/ui/screens/landing/landing_screen.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../ui/screens/error/web_error_screen.dart';

class WebRoutes {
  final routes = [
    QRoute(
      path: "/",
      name: WebRoutesNames.landing,
      builder: () => LandingScreen(),
      pageType: const QFadePage(
        opaque: true,
        transitionDurationMilliseconds: 1000,
        reverseTransitionDurationMilliseconds: 1000,
      ),
      middleware: [
        /*  QMiddlewareBuilder(
            redirectGuardFunc: (p0) {
              return Future.delayed(const Duration(seconds: 0), () {
                return "/login";
              });
            },
          ) */
        //  AuthMiddleware()
      ],
    ),
    QRoute(
      path: "/home",
      name: WebRoutesNames.home,
      builder: () => HomeScreen(),
      pageType: const QFadePage(
        opaque: true,
        transitionDurationMilliseconds: 1000,
        reverseTransitionDurationMilliseconds: 1000,
      ),
      middleware: [
        // AuthMiddleware2(),
      ],
    ),
    QRoute(
      path: "/landing",
      builder: () => HomeScreen(),
      pageType: const QFadePage(
        opaque: true,
        transitionDurationMilliseconds: 1000,
        reverseTransitionDurationMilliseconds: 1000,
      ),
      middleware: [
        // AuthMiddleware2(),
        RedirectIncorrectRoute()
      ],
    ),
    QRoute(
      path: "/about",
      name: WebRoutesNames.aboutMe,
      builder: () => AboutMeScreen(),
      pageType: const QFadePage(
        opaque: true,
        transitionDurationMilliseconds: 1000,
        reverseTransitionDurationMilliseconds: 1000,
      ),
      middleware: [
        // AuthMiddleware2(),
      ],
    ),
    /* QRoute(
      path: "/login",
      name: WebRoutesNames.login,
      builder: () => const WebLogin(),
      pageType: const QFadePage(
        opaque: true,
        transitionDurationMilliseconds: 1000,
        reverseTransitionDurationMilliseconds: 1000,
      ),
       middleware: [
        AuthMiddleware(),
      ], 
    ),
    QRoute(
      path: "/register",
      name: WebRoutesNames.register,
      builder: () => const WebRegister(),
      pageType: const QFadePage(
        opaque: true,
        transitionDurationMilliseconds: 1000,
        reverseTransitionDurationMilliseconds: 1000,
      ),
    ),
    QRoute(
      path: "/forgot-password",
      name: WebRoutesNames.forgotPassword,
      builder: () => const WebForgotPassword(),
      pageType: const QFadePage(
        opaque: true,
        transitionDurationMilliseconds: 1000,
        reverseTransitionDurationMilliseconds: 1000,
      ),
    ),
    QRoute(
      path: "/profile",
      name: WebRoutesNames.profile,
      builder: () => const WebProfile(),
      pageType: const QFadePage(
        opaque: true,
        transitionDurationMilliseconds: 1000,
        reverseTransitionDurationMilliseconds: 1000,
      ),
      children: [
        QRoute(
          path: "/:id",
          name: WebRoutesNames.profileById,
          builder: () => const WebProfile(),
          pageType: const QFadePage(
            opaque: true,
            transitionDurationMilliseconds: 1000,
            reverseTransitionDurationMilliseconds: 1000,
          ),
        ),
      ],
      middleware: [
        InvalidRouteMiddleware(),
      ],
    ),*/

    QRoute(
      path: "/error",
      name: WebRoutesNames.error,
      builder: () => const WebErrorScreen(),
      pageType: const QFadePage(
        transitionDurationMilliseconds: 1000,
        reverseTransitionDurationMilliseconds: 1000,
      ),
    ),
  ];

  void initDefaultConfig() {
    QR.settings.enableDebugLog = false;
    QR.settings.enableLog = false;
    //QR.setUrlStrategy();
    QR.settings.initPage = LandingScreen();
    QR.settings.oneRouteInstancePerStack = true;
    QR.settings.notFoundPage = QRoute(
        path: "/error",
        name: "error",
        builder: () => const WebErrorScreen(),
        pageType: const QFadePage(
          transitionDurationMilliseconds: 1000,
        ));
  }
}

class RedirectIncorrectRoute extends QMiddleware {
  @override
  Future<bool> canPop() async => false;
  @override
  Future<String?> redirectGuard(String path) async => '/';
}
/*class AuthMiddleware extends QMiddleware {
  Future<User?> fetchUser() async =>
      await UserRepository().read(); // Get you Data storage

  @override
  Future<bool> canPop() async => await fetchUser() == null;
  @override
  Future<String?> redirectGuard(String path) async =>
      await fetchUser() == null ? null : '/home';
}

class AuthMiddleware2 extends QMiddleware {
  Future<User?> fetchUser() async =>
      await UserRepository().read(); // Get you Data storage

  @override
  Future<bool> canPop() async => await fetchUser() == null;
  @override
  Future<String?> redirectGuard(String path) async =>
      await fetchUser() == null ? "/" : null;
}

class InvalidRouteMiddleware extends QMiddleware {
  Future<User?> fetchUser() async =>
      await UserRepository().read(); // Get you Data storage

  @override
  Future<bool> canPop() async => await fetchUser() == null;
  @override
  Future<String?> redirectGuard(String path) async =>
      await fetchUser() == null ? "/error" : null;
}*/
