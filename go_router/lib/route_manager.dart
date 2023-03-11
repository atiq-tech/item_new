import 'package:go_router/go_router.dart';
import 'package:go_router_test/pages/home_page.dart';
import 'package:go_router_test/pages/second_page.dart';
import 'package:go_router_test/pages/third_page.dart';

class RouteManager {
  static final routeConfig = GoRouter(routes: [
    GoRoute(
      name: RouteNames.Home,
      path: "/",
      builder: (context, state) => HomePage(),
      routes: [
        GoRoute(
          name: RouteNames.SecondPage,
          path: "SecondPage/:name",
          builder: (context, state) => SecondPage(
            name: state.params["name"]!,
          ),
        ),
        GoRoute(
          name: RouteNames.ThirdPage,
          path: "ThirdPage",
          builder: (context, state) => ThirdPage(),
        ),
      ],
    ),
  ]);
}

class RouteNames {
  static final Home = "/";
  static final SecondPage = "SecondPage";
  static final ThirdPage = "ThirdPage";
}
