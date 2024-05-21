import 'package:bloc_practice/views/about_view.dart';
import 'package:bloc_practice/views/counter_view.dart';
import 'package:bloc_practice/views/home_view.dart';
import 'package:bloc_practice/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppRoutes {
  GoRouter route = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: <RouteBase>[
      // home
      GoRoute(
          path: "/",
          name: "home",
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomeView());
          },
          routes: [
            /// counter
            GoRoute(
              path: "counter",
              name: "counter",
              pageBuilder: (context, state) {
                return MaterialPage(child: CounterView());
              },
              routes: [
                GoRoute(
                  path: "about",
                  name: "about",
                  pageBuilder: (context, state) {
                    return const MaterialPage(child: AboutView());
                  },
                ),
              ],
            ),

            /// profile
            GoRoute(
              path: "profile",
              name: "profile",
              pageBuilder: (context, state) {
                return const MaterialPage(child: ProfileView());
              },
            )
          ]),
    ],
  );
}
