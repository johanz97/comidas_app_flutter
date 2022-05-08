import 'package:auto_route/annotations.dart';
import '../pages/detail_page.dart';
import '../pages/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      path: "/home",
      initial: true,
    ),
    AutoRoute(
      page: DetailPage,
      path: "/detail",
    ),
  ],
)
class $AppRouter {}
