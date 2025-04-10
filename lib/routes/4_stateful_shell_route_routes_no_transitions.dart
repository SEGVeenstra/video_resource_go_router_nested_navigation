import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_page.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_show.dart';

final statefulShellRouteRoutesNoTransitions = <RouteBase>[
  StatefulShellRoute.indexedStack(
    builder: (context, state, shell) {
      return TvPage(currentChannel: shell.currentIndex + 1, child: shell);
    },
    branches: [
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: '/1',
            pageBuilder:
                (context, state) => NoTransitionPage(
                  child: TvShow(key: Key('1'), color: Colors.blue),
                ),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: '/2',
            pageBuilder:
                (context, state) => NoTransitionPage(
                  child: TvShow(key: Key('2'), color: Colors.red),
                ),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: '/3',
            pageBuilder:
                (context, state) => NoTransitionPage(
                  child: TvShow(key: Key('3'), color: Colors.green),
                ),
          ),
        ],
      ),
    ],
  ),
];
