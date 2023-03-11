import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/pages/second_page.dart';
import 'package:go_router_test/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            Text('Home Page'),
            ElevatedButton(
              onPressed: () => context.goNamed(RouteNames.SecondPage,
                  params: {"name": "Atiq Rahman"}),
              child: Text('Go 2nd Page'),
            )
          ],
        ),
      ),
    );
  }
}
