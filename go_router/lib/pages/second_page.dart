import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/pages/third_page.dart';
import 'package:go_router_test/route_manager.dart';

class SecondPage extends StatelessWidget {
  final String name;
  const SecondPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Go Router'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Second Page: $name'),
            ElevatedButton(
              onPressed: () => context.goNamed(RouteNames.ThirdPage),
              child: Text(' Go 3rd Page'),
            )
          ],
        ),
      ),
    );
  }
}
