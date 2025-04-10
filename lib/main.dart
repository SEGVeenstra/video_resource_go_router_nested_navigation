import 'package:flutter/material.dart';
import 'package:video_resource_go_router_nested_navigation/nested_navigation_app.dart';
import 'package:video_resource_go_router_nested_navigation/nested_navigation_router.dart';
import 'package:video_resource_go_router_nested_navigation/routes/1_normal_routes.dart';

void main() {
  // Pick your routes!
  // - normalRoutes
  // - shellRouteRoutes
  // - shellRouteRoutesNoTransitions
  // - statefulShellRouteRoutesNoTransitions
  final router = NestedNavigationRouter(routes: normalRoutes);

  runApp(NestedNavigationApp(router: router));
}
