import 'package:exam_project/core/routing/routers.dart';
import 'package:exam_project/features/home/pages/home.dart';
import 'package:exam_project/features/onboarding/pages/launch.dart';
import 'package:go_router/go_router.dart';

class MyRouter {
  GoRouter router = GoRouter(
    initialLocation: Routers.home,
    routes: <RouteBase>[
      GoRoute(
        path: Routers.launchPage,
        builder: (context, state) => Launch(),
      ),
      GoRoute(
        path: Routers.home,
        builder: (context, state) => HomePage(),
      ),
    ],
  );
}
