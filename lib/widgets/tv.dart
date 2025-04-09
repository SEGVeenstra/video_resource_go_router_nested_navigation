import 'package:flutter/material.dart';

class Tv extends StatelessWidget {
  const Tv({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 180,
      child: Column(
        children: [
          Expanded(
            child: ColoredBox(
              color: Colors.black,
              child: Padding(padding: const EdgeInsets.all(8.0), child: child),
            ),
          ),
          Container(color: Colors.black, width: 40, height: 20),
          Container(color: Colors.black, width: 100, height: 10),
        ],
      ),
    );
  }
}
