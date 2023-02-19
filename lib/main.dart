import 'package:bricks/presentations/dashboard_page.dart';
import 'package:bricks/utils/style/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: baseTheme(),
      home: buildSystemUiOverlay(),
    );
  }
}

Widget buildSystemUiOverlay() {
  return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark, child: DashboardPage());
}
