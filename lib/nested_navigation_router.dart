import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class NestedNavigationRouter extends GoRouter {
  NestedNavigationRouter({required List<RouteBase> routes})
    : super.routingConfig(
        initialLocation: '/1',
        routingConfig: ValueNotifier(RoutingConfig(routes: routes)),
      );

  void goToChannel(int channel) {
    go('/$channel');
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
