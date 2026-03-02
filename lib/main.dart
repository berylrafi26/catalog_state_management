import 'package:catalog_state_management/core/routes/app_route.dart';
import 'package:catalog_state_management/injection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(buildApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoute.catalog,
      routes: AppRoute.routes,
      title: 'Kafe',
      debugShowCheckedModeBanner: false,
    );
  }
}