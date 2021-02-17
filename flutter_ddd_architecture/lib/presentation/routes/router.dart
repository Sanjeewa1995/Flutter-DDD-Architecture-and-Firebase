import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_ddd_architecture/presentation/sign_in/sign_in_page.dart';
import 'package:flutter_ddd_architecture/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
  ],
)
class $Router {
  SignInPage signInPage;
}
