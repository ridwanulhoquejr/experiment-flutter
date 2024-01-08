import 'package:experiment_app/src/routes/app_route_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Material 3!',
            ),
            ElevatedButton(
              child: const Text('Go to Product Page'),
              onPressed: () {
                context.goNamed(AppRouteConstant.productRouteName);
              },
            ),
            ElevatedButton(
              child: const Text('Go to Product Page'),
              onPressed: () {
                context.pushNamed(AppRouteConstant.productRouteName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
