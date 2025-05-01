import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_care/features/home/view/homedashboardscreen.dart';
import 'package:pet_care/features/pet/view/pet_list_screen.dart';
import 'package:pet_care/features/profile/view/user_profile_screen.dart';
import 'package:pet_care/routes/routes_constants.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutesConstants.home,
    routes: <RouteBase>[
      GoRoute(
        path: RoutesConstants.home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeDashboardScreen();
        },
      ),
        GoRoute(
        path: RoutesConstants.pets,
        builder: (context, state) => const PetListScreen(),
      ),
      GoRoute(
        path: RoutesConstants.profile,
        builder: (context, state) => const UserProfileScreen(),
      ),
    ],
  );
}
