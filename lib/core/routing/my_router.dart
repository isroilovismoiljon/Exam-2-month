import 'package:exam_project/core/routing/routers.dart';
import 'package:go_router/go_router.dart';

class MyRouter {
  GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: Routers.home,
      ),
    ],
  );
}
