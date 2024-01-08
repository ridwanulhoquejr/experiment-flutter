import 'package:experiment_app/src/routes/app_router_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: AppRouter.goRouter.routeInformationParser,
      routerDelegate: AppRouter.goRouter.routerDelegate,
      routeInformationProvider: AppRouter.goRouter.routeInformationProvider,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // routerConfig: AppRouter.goRouter,
      // home: const HomePage(),
    );
  }
}
