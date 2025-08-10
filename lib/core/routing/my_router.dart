import 'package:exam_project/core/routing/routers.dart';
import 'package:exam_project/features/home/pages/home.dart';
import 'package:exam_project/features/onboarding/pages/launch.dart';
import 'package:go_router/go_router.dart';

import 'custom_transition_page.dart';

class MyRouter {
  GoRouter router = GoRouter(
    initialLocation: Routers.launchPage,
    routes: <RouteBase>[
      GoRoute(
        path: Routers.launchPage,
        builder: (context, state) => Launch(),
      ),
      GoRoute(
        path: Routers.home,
          pageBuilder: (context, state) => buildPageWithRightToLeftTransition(
            context,
            state,
            const HomePage(),
          ),
      ),
    ],
  );
}


