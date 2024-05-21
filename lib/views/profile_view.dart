import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
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
                  context.goNamed("home");
                },
                child: Text("Navigate")),
          ],
        ),
      ),
    );
  }
}
