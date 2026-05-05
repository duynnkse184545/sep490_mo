import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:sep490_mo/app/widget/hub_speed_dial.dart';
import 'package:sep490_mo/app/widget/bottom_tab_nav.dart';
import 'package:sep490_mo/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:sep490_mo/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:sep490_mo/features/fanhub/presentation/screens/fanhub_detail_screen.dart';
import 'package:sep490_mo/features/fanhub/presentation/screens/fanhub_list_screen.dart';
import 'package:sep490_mo/features/fanhub/presentation/screens/create_fanhub_screen.dart';
import 'package:sep490_mo/features/member/presentation/screens/member_list_screen.dart';
import 'package:sep490_mo/features/member/presentation/screens/join_questions_management_screen.dart';
import 'package:sep490_mo/features/member/presentation/widgets/join_hub_button.dart';
import 'package:sep490_mo/features/post/presentation/screens/create_post_screen.dart';
import 'package:sep490_mo/features/post/presentation/screens/bookmark_screen.dart';
import 'package:sep490_mo/features/post/presentation/screens/feed_screen.dart';
import 'package:sep490_mo/app/screen/moderation_home_screen.dart';
import 'package:sep490_mo/app/screen/hub_settings_home_screen.dart';
import 'package:sep490_mo/features/post/presentation/widgets/hub_feed_widget.dart';
import 'package:sep490_mo/features/store/presentation/screens/store_home_screen.dart';
import 'package:sep490_mo/features/payment/presentation/screens/payment_screen.dart';
import 'package:sep490_mo/features/payment/presentation/screens/payment_result_screen.dart';
import 'package:sep490_mo/features/auth/presentation/widgets/logout_button.dart';
import 'package:sep490_mo/features/user/presentation/screens/user_profile_screen.dart';
import 'package:sep490_mo/features/user/presentation/screens/vtuber_application_screen.dart';

part 'routes.g.dart';

// ─── Auth Routes (outside shell) ───────────────────────────────────────────

// TypeRoute doesnt need routeConstants
@TypedGoRoute<SignInRoute>(path: '/sign-in')
class SignInRoute extends GoRouteData with $SignInRoute {
  const SignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SignInScreen();
}

@TypedGoRoute<SignUpRoute>(path: '/sign-up')
class SignUpRoute extends GoRouteData with $SignUpRoute {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SignUpScreen();
}

// ─── Store Routes ─────────────────────────────────────────────────────────
@TypedGoRoute<StoreRoute>(path: '/store')
class StoreRoute extends GoRouteData with $StoreRoute {
  const StoreRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const StoreHomeScreen();
}

@TypedGoRoute<CreateFanHubRoute>(path: '/create-hub')
class CreateFanHubRoute extends GoRouteData with $CreateFanHubRoute {
  const CreateFanHubRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CreateFanHubScreen();
}
// ─── Shell (Bottom Nav wrapper) ────────────────────────────────────────────

@TypedStatefulShellRoute<MainShellRoute>(
  branches: [
    TypedStatefulShellBranch<HomeBranch>(
      routes: [TypedGoRoute<HomeRoute>(path: '/home')],
    ),
    TypedStatefulShellBranch<ExploreBranch>(
      routes: [TypedGoRoute<ExploreRoute>(path: '/explore')],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<UserProfileRoute>(
          path: '/profile',
          routes: [
            TypedGoRoute<BookmarkRoute>(path: 'bookmarks'),
            TypedGoRoute<VtuberApplicationRoute>(path: 'vtuber-application'),
          ],
        ),
      ],
    ),
  ],
)
class MainShellRoute extends StatefulShellRouteData {
  const MainShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return MainShell(navigationShell: navigationShell);
  }
}

// ─── Branch Data ───────────────────────────────────────────────────────────

class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();
}

class ExploreBranch extends StatefulShellBranchData {
  const ExploreBranch();
}

class StoreBranch extends StatefulShellBranchData {
  const StoreBranch();
}

class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch();
}

// ─── Tab Routes ────────────────────────────────────────────────────────────
// ─── Home Routes ─────────────────────────────────────────────────────────

class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const FeedScreen();
}

// ─── Explore Routes ─────────────────────────────────────────────────────────

class ExploreRoute extends GoRouteData with $ExploreRoute {
  const ExploreRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FanHubListScreen();
}

@TypedGoRoute<FanHubDetailRoute>(
  path: '/explore/:subdomain', // ← /explore/:subdomain
  routes: [
    TypedGoRoute<CreatePostRoute>(path: 'create'),
    TypedGoRoute<MemberListRoute>(path: 'members'),
    TypedGoRoute<ModerationRoute>(path: 'moderation'),
    TypedGoRoute<HubSettingsRoute>(path: 'settings'),
    TypedGoRoute<JoinQuestionsManagementRoute>(path: 'join-questions-settings'),
  ],
)
class FanHubDetailRoute extends GoRouteData with $FanHubDetailRoute {
  const FanHubDetailRoute({required this.subdomain, required this.fanHubId});

  final String subdomain;
  final int fanHubId;

  @override
  Widget build(BuildContext context, GoRouterState state) => FanHubDetailScreen(
    subdomain: subdomain,
    feedWidget: HubFeedWidget(subdomain: subdomain),
    speedDial: HubSpeedDial(subdomain: subdomain, fanHubId: fanHubId),
    joinButtonBuilder: (requiresApproval) => JoinHubButton(
      fanHubId: fanHubId,
      requiresApproval: requiresApproval,
    ),
  );
}

class CreatePostRoute extends GoRouteData with $CreatePostRoute {
  const CreatePostRoute({required this.subdomain, required this.fanHubId});

  final String subdomain;
  final int fanHubId;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      CreatePostScreen(fanHubId: fanHubId);
}

class MemberListRoute extends GoRouteData with $MemberListRoute {
  const MemberListRoute({required this.subdomain, required this.fanHubId});

  final String subdomain;
  final int fanHubId;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      MemberListScreen(fanHubId: fanHubId);
}

class ModerationRoute extends GoRouteData with $ModerationRoute {
  const ModerationRoute({
    required this.subdomain,
    required this.fanHubId,
    this.initialTab = 0,
  });

  final String subdomain;
  final int fanHubId;
  final int initialTab;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ModerationHomeScreen(
        subdomain: subdomain,
        fanHubId: fanHubId,
        initialTab: initialTab,
      );
}

// ─── Profile Route ─────────────────────────────────────────────────────────

class UserProfileRoute extends GoRouteData with $UserProfileRoute {
  const UserProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const UserProfileScreen(logoutButton: LogoutButton());
}

class BookmarkRoute extends GoRouteData with $BookmarkRoute {
  const BookmarkRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const BookmarkScreen();
}

class VtuberApplicationRoute extends GoRouteData with $VtuberApplicationRoute {
  const VtuberApplicationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VtuberApplicationScreen();
}

class HubSettingsRoute extends GoRouteData with $HubSettingsRoute {
  const HubSettingsRoute({
    required this.subdomain,
    required this.fanHubId,
    this.initialTab = 0,
  });

  final String subdomain;
  final int fanHubId;
  final int initialTab;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      HubSettingsHomeScreen(
        subdomain: subdomain,
        fanHubId: fanHubId,
        initialTab: initialTab,
      );
}

class JoinQuestionsManagementRoute extends GoRouteData with $JoinQuestionsManagementRoute {
  const JoinQuestionsManagementRoute({required this.subdomain, required this.fanHubId});

  final String subdomain;
  final int fanHubId;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      JoinQuestionsManagementScreen(fanHubId: fanHubId);
}

// ─── Payment Routes ────────────────────────────────────────────────────────
@TypedGoRoute<PaymentRoute>(path: '/payment')
class PaymentRoute extends GoRouteData with $PaymentRoute {
  const PaymentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const PaymentScreen();
}

@TypedGoRoute<PaymentReturnRoute>(path: '/payment/return')
class PaymentReturnRoute extends GoRouteData with $PaymentReturnRoute {
  final String? status;
  @JsonKey(name: 'vnp_TxnRef')
  final int? vnpTxnRef;

  const PaymentReturnRoute({this.status, this.vnpTxnRef});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PaymentResultScreen(status: 'success', paymentId: vnpTxnRef);
  }
}

@TypedGoRoute<PaymentCancelRoute>(path: '/payment/cancel')
class PaymentCancelRoute extends GoRouteData with $PaymentCancelRoute {
  @JsonKey(name: 'vnp_TxnRef')
  final int? vnpTxnRef;

  const PaymentCancelRoute({this.vnpTxnRef});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PaymentResultScreen(status: 'cancel', paymentId: vnpTxnRef);
  }
}

