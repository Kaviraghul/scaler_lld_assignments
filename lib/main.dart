import 'package:flutter/material.dart';
import 'package:scaler_assignments/presentation/resources/routes_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: routesManger.routeInformationParser,
      routeInformationProvider: routesManger.routeInformationProvider,
      routerDelegate: routesManger.routerDelegate,
      backButtonDispatcher: RootBackButtonDispatcher(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
