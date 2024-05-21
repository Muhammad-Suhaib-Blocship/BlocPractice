import 'package:bloc_practice/project/routes/app_page_route_configuration.dart';
import 'package:bloc_practice/views/counter_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppView());
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: MyAppRoutes().route,
      title: 'Flutter Demo',
      // home: CounterView(),
    );
  }
}
