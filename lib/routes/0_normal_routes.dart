import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_page.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_show.dart';

/// This is a normal route example.
/// Each Route builds a new instance of the TvPage.
///
/// When you switch between TV channels, you'll see a page transition.
final normalRoutes = <RouteBase>[
  GoRoute(
    path: '/1',
    builder:
        (context, state) =>
            TvPage(currentChannel: 1, child: TvShow(color: Colors.blue)),
  ),
  GoRoute(
    path: '/2',
    builder:
        (context, state) =>
            TvPage(currentChannel: 2, child: TvShow(color: Colors.red)),
  ),
  GoRoute(
    path: '/3',
    builder:
        (context, state) =>
            TvPage(currentChannel: 3, child: TvShow(color: Colors.green)),
  ),
];
