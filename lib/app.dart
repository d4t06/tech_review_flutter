import 'package:flutter/material.dart';
import 'package:tech_review/route.dart';
import 'package:tech_review/screens/root.dart';
import 'package:tech_review/styles/themes.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: RootScreen(),
      onGenerateRoute: RouterGenerator.routes(),
      theme: AppThemes.lightTheme,
    );
  }
}
