import 'package:flutter/material.dart';
import 'package:video_resource_go_router_nested_navigation/nested_navigation_router.dart';

typedef ChannelChangeCallback = void Function(int channel);

class TvRemote extends StatelessWidget {
  const TvRemote({super.key, this.currentChannel});

  final int? currentChannel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.black,
      child: Theme(
        data: ThemeData.light().copyWith(
          iconButtonTheme: IconButtonThemeData(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith(
                (states) =>
                    states.contains(WidgetState.disabled)
                        ? Colors.lightGreen
                        : Colors.white,
              ),
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton.filledTonal(
              onPressed:
                  currentChannel == 1
                      ? null
                      : () => NestedNavigationRouter.of(context).goToChannel(1),
              icon: Text('1'),
            ),
            IconButton.filledTonal(
              onPressed:
                  currentChannel == 2
                      ? null
                      : () => NestedNavigationRouter.of(context).goToChannel(2),
              icon: Text('2'),
            ),
            IconButton.filledTonal(
              onPressed:
                  currentChannel == 3
                      ? null
                      : () => NestedNavigationRouter.of(context).goToChannel(3),
              icon: Text('3'),
            ),
          ],
        ),
      ),
    );
  }
}
