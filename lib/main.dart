import 'package:flutter_mapp_clone/constants/colors.dart';
import 'package:flutter_mapp_clone/screens/courses_screen.dart';
import 'package:flutter_mapp_clone/screens/home_screen.dart';
import 'package:flutter_mapp_clone/screens/small_error_screen.dart';
import 'package:flutter_mapp_clone/screens/widgets_screen.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

CustomTransitionPage buildPageWithoutAnimation({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          child);
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return MediaQuery.of(context).size.width > 300
            ? const HomeScreen()
            : const SmallErrorScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'courses',
          builder: (BuildContext context, GoRouterState state) =>
              MediaQuery.of(context).size.width > 300
                  ? const CoursesScreen()
                  : const SmallErrorScreen(),
          pageBuilder: (BuildContext context, GoRouterState state) =>
              buildPageWithoutAnimation(
            context: context,
            state: state,
            child: MediaQuery.of(context).size.width > 300
                ? const CoursesScreen()
                : const SmallErrorScreen(),
          ),
        ),
        GoRoute(
          path: 'widgets',
          builder: (BuildContext context, GoRouterState state) =>
              MediaQuery.of(context).size.width > 300
                  ? const WidgetScreen()
                  : const SmallErrorScreen(),
          pageBuilder: (BuildContext context, GoRouterState state) =>
              buildPageWithoutAnimation(
            context: context,
            state: state,
            child: MediaQuery.of(context).size.width > 300
                ? const WidgetScreen()
                : const SmallErrorScreen(),
          ),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Mapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: white),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: white,
              displayColor: white,
            ),
        appBarTheme: const AppBarTheme(
            color: backgroundColorBlack, foregroundColor: white),
        scaffoldBackgroundColor: backgroundColorBlack,
        cardColor: backgroundColorBlack,
      ),
      routerConfig: _router,
    );
  }
}
