import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sep490_mo/core/constants/route_constants.dart';
import 'package:sep490_mo/core/widgets/bottom_tab_nav.dart';
import 'package:sep490_mo/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:sep490_mo/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:sep490_mo/features/fanhub/presentation/screens/fanhub_list_screen.dart';
import 'package:sep490_mo/features/post/presentation/screens/feed_screen.dart';

part 'routes.g.dart';

// ─── Auth Routes (outside shell) ───────────────────────────────────────────

@TypedGoRoute<SignInRoute>(path: RouteConstants.signIn)
class SignInRoute extends GoRouteData with $SignInRoute {
  const SignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignInScreen();
}

@TypedGoRoute<SignUpRoute>(path: RouteConstants.signUp)
class SignUpRoute extends GoRouteData with $SignUpRoute {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignUpScreen();
}

// ─── Shell (Bottom Nav wrapper) ────────────────────────────────────────────

@TypedStatefulShellRoute<MainShellRoute>(
  branches: [
    TypedStatefulShellBranch<HomeBranch>(
      routes: [TypedGoRoute<HomeRoute>(path: RouteConstants.home)],
    ),
    TypedStatefulShellBranch<ExploreBranch>(
      routes: [TypedGoRoute<ExploreRoute>(path: RouteConstants.explore)],
    ),
    // TypedStatefulShellBranch<ProfileBranch>(
    //   routes: [TypedGoRoute<ProfileRoute>(path: RouteConstants.profile)],
    // ),
  ],
)
class MainShellRoute extends StatefulShellRouteData {
  const MainShellRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
    return MainShell(navigationShell: navigationShell);
  }
}

class HomeBranch extends StatefulShellBranchData { const HomeBranch(); }
class ExploreBranch extends StatefulShellBranchData { const ExploreBranch(); }
class ProfileBranch extends StatefulShellBranchData { const ProfileBranch(); }

// ─── Tab Routes ────────────────────────────────────────────────────────────

class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const FeedScreen();
}

class ExploreRoute extends GoRouteData with $ExploreRoute {
  const ExploreRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const FanHubListScreen(); // create this
}

// class ProfileRoute extends GoRouteData with $ProfileRoute {
//   const ProfileRoute();
//
//   @override
//   Widget build(BuildContext context, GoRouterState state) => const ProfileScreen(); // create this
// }

// ─── Main Shell Widget ─────────────────────────────────────────────────────

