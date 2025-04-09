import 'package:flutter/material.dart';
import 'package:video_resource_go_router_nested_navigation/nested_navigation_app.dart';
import 'package:video_resource_go_router_nested_navigation/nested_navigation_router.dart';
import 'package:video_resource_go_router_nested_navigation/routes/shell_route_routes.dart';

void main() {
  final router = NestedNavigationRouter(routes: statelessNestedRoutes);

  runApp(NestedNavigationApp(router: router));
}
