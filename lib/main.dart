import 'package:flutter/material.dart';
import 'package:notes_flutter/routes/routes.dart';
import 'package:notes_flutter/themes/main_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Notes Flutter',
      debugShowCheckedModeBanner: false,
      theme: getMainTheme(),
      routerDelegate: RouteManager.routes.routerDelegate,
      routeInformationParser: RouteManager.routes.routeInformationParser,
      routeInformationProvider: RouteManager.routes.routeInformationProvider,
    );
  }
}
