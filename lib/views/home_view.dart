import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home View"),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.goNamed("profile");
                },
                child: const Text("Back")),
            ElevatedButton(
                onPressed: () {
                  context.goNamed("counter");
                  // context.go('/counter');
                },
                child: Text("Navigate")),
          ],
        ),
      ),
    );
  }
}
