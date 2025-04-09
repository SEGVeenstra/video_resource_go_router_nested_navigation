import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_page.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_show.dart';

final statelessNestedRoutes = <RouteBase>[
  ShellRoute(
    builder: (context, state, child) {
      return Tv(child: child);
    },
    routes: [
      GoRoute(
        path: '/1',
        pageBuilder:
            (context, state) => NoTransitionPage(
              child: TvPage(
                currentChannel: 1,
                child: TvShow(color: Colors.blue),
              ),
            ),
      ),
      GoRoute(
        path: '/2',
        pageBuilder:
            (context, state) => NoTransitionPage(
              child: TvPage(
                currentChannel: 2,
                child: TvShow(color: Colors.red),
              ),
            ),
      ),
      GoRoute(
        path: '/3',
        pageBuilder:
            (context, state) => NoTransitionPage(
              child: TvPage(
                currentChannel: 3,
                child: TvShow(color: Colors.green),
              ),
            ),
      ),
    ],
  ),
];
