import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sep490_mo/core/constants/route_constants.dart';
import 'package:sep490_mo/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:sep490_mo/features/auth/presentation/screens/sign_up_screen.dart';

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

