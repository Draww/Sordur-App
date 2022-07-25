import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/screens.dart';

final GoRouter routes = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const MainScreen(),
    ),
  ],
);
