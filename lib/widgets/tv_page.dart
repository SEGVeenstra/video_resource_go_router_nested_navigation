import 'package:flutter/material.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_remote.dart';
import 'package:video_resource_go_router_nested_navigation/widgets/tv_show.dart';

class TvPage extends StatelessWidget {
  const TvPage({super.key, required this.child, this.currentChannel});

  final TvShow child;
  final int? currentChannel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: UniqueKey(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Tv(child: child)),
          Center(child: TvRemote(currentChannel: currentChannel)),
        ],
      ),
    );
  }
}
