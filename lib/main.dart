import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_week03/go_screen01.dart';
import 'package:tasks_week03/go_screen02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
    );
  }
}

GoRouter router = GoRouter(initialLocation: '/home', routes: [
  GoRoute(
    name: '/home',
    path: '/home',
    builder: (context, state) => GoScreen01(),
  ),
  GoRoute(
    path: '/goScreen02',
    builder: (context, state) => GoScreen02(),
  ),
]);
