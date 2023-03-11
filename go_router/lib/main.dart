import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router_test/route_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp.router(
      routerConfig: RouteManager.routeConfig,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
    );
  }
}
