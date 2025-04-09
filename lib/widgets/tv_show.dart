import 'dart:async';

import 'package:flutter/material.dart';

class TvShow extends StatefulWidget {
  const TvShow({super.key, required this.color});

  final Color color;

  @override
  State<TvShow> createState() => _TvShowState();
}

class _TvShowState extends State<TvShow> {
  int value = 0;

  late final Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        value++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: widget.color,
      child: Center(
        child: Text(
          timer.tick.floor().toString(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
