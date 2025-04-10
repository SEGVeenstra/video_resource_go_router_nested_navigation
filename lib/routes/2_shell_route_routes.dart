import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_page.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_show.dart';

// This is a shell route example.
// The ShellRoute does not have it's ow path, instead, it's used as a 'Shell' for
// the child routes.
final shellRouteRoutes = <RouteBase>[
  ShellRoute(
    builder: (context, state, child) {
      final current = switch (state.uri.path) {
        '/1' => 1,
        '/2' => 2,
        '/3' => 3,
        _ => null,
      };
      return TvPage(currentChannel: current, child: child);
    },
    routes: [
      GoRoute(
        path: '/1',
        builder: (context, state) => TvShow(key: Key('1'), color: Colors.blue),
      ),
      GoRoute(
        path: '/2',
        builder: (context, state) => TvShow(key: Key('2'), color: Colors.red),
      ),
      GoRoute(
        path: '/3',
        builder: (context, state) => TvShow(key: Key('3'), color: Colors.green),
      ),
    ],
  ),
];
