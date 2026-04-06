import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sep490_mo/core/constants/route_constants.dart';
import 'package:sep490_mo/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:sep490_mo/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:sep490_mo/features/post/presentation/screens/feed_screen.dart';

part 'routes.g.dart';

@TypedGoRoute<SignInRoute>(path: RouteConstants.signIn)
class SignInRoute extends GoRouteData with $SignInRoute{
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

@TypedGoRoute<MainFeedRoute>(path: RouteConstants.mainFeed)
class MainFeedRoute extends GoRouteData with $MainFeedRoute {
  const MainFeedRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const FeedScreen();
}

// class WorkspaceListRoute extends GoRouteData with _$WorkspaceListRoute {
// const WorkspaceListRoute();
//
// @override
// Widget build(BuildContext context, GoRouterState state) => const WorkspaceListScreen();
// }
//
// class CreateWorkspaceRoute extends GoRouteData with _$CreateWorkspaceRoute {
//   const CreateWorkspaceRoute();
//
//   @override
//   Widget build(BuildContext context, GoRouterState state) => const CreateWorkspaceScreen();
// }
//
// class JoinWorkspaceRoute extends GoRouteData with _$JoinWorkspaceRoute {
//   const JoinWorkspaceRoute();
//
//   @override
//   Widget build(BuildContext context, GoRouterState state) => const JoinWorkspaceScreen();
// }
//
// class WorkspaceDetailRoute extends GoRouteData with _$WorkspaceDetailRoute {
//   final String workspaceId;
//
//   const WorkspaceDetailRoute({required this.workspaceId});
//
//   @override
//   Widget build(BuildContext context, GoRouterState state) =>
//       WorkspaceDetailScreen(workspaceId: workspaceId);
// }
//
