import 'package:flutter/material.dart';
import 'package:video_resource_go_router_nested_navigation/nested_navigation_router.dart';

class ShellPage extends StatelessWidget {
  const ShellPage({super.key, required this.child, required this.index});

  final Widget child;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap:
            (value) => switch (value) {
              0 => context.router.goToHome(),
              _ => context.router.goToFavorites(),
            },
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
