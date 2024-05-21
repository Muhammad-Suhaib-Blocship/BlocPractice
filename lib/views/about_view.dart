import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                child: Text("Back")),
            ElevatedButton(
                onPressed: () {
                  context.goNamed("profile");
                },
                child: Text("Navigate")),
          ],
        ),
      ),
    );
  }
}
