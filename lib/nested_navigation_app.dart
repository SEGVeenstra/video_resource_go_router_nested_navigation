import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NestedNavigationApp extends StatelessWidget {
  const NestedNavigationApp({super.key, required this.router});

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}
