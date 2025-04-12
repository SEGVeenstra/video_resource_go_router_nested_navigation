import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_page.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_show.dart';

/// This configuration uses path parameters to define the TV channels.
final pathParamRoutes = <RouteBase>[
  GoRoute(path: '/', redirect: (context, state) => '/1'),
  GoRoute(
    path: '/:channel',
    builder: (context, state) {
      final channel = int.parse(state.pathParameters['channel']!);
      return TvPage(
        currentChannel: channel,
        child: TvShow(
          color: switch (channel) {
            1 => Colors.blue,
            2 => Colors.red,
            3 => Colors.green,
            _ => throw Exception('Invalid channel'),
          },
        ),
      );
    },
  ),
];
