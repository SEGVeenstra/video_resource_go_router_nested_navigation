import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:video_resource_go_router_nested_navigation/nested_page.dart';
import 'package:video_resource_go_router_nested_navigation/shell_page.dart';

class NestedNavigationRouter extends GoRouter {
  NestedNavigationRouter({required List<RouteBase> routes})
    : super.routingConfig(
        initialLocation: '/',
        routingConfig: ValueNotifier(RoutingConfig(routes: routes)),
      );

  void goToHome() {
    go('/');
  }

  void goToFavorites() {
    go('/favorites');
  }

  static NestedNavigationRouter of(BuildContext context) {
    return GoRouter.of(context) as NestedNavigationRouter;
  }
}

extension GoRouterExtension on BuildContext {
  NestedNavigationRouter get router {
    return NestedNavigationRouter.of(this);
  }
}

final statelessNestedRoutes = <RouteBase>[
  ShellRoute(
    builder: (context, state, child) {
      final index = state.uri.pathSegments.isEmpty ? 0 : 1;
      return ShellPage(index: index, child: child);
    },
    routes: [
      GoRoute(
        path: '/',
        pageBuilder:
            (context, state) =>
                NoTransitionPage(child: NestedPage(name: 'Home')),
      ),
      GoRoute(
        path: '/favorites',
        pageBuilder:
            (context, state) =>
                NoTransitionPage(child: NestedPage(name: 'Favorites')),
      ),
    ],
  ),
];
