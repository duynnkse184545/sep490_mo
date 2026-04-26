// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $signInRoute,
  $signUpRoute,
  $storeRoute,
  $createFanHubRoute,
  $mainShellRoute,
  $fanHubDetailRoute,
];

RouteBase get $signInRoute =>
    GoRouteData.$route(path: '/sign-in', factory: $SignInRoute._fromState);

mixin $SignInRoute on GoRouteData {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  @override
  String get location => GoRouteData.$location('/sign-in');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpRoute =>
    GoRouteData.$route(path: '/sign-up', factory: $SignUpRoute._fromState);

mixin $SignUpRoute on GoRouteData {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  @override
  String get location => GoRouteData.$location('/sign-up');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $storeRoute =>
    GoRouteData.$route(path: '/store', factory: $StoreRoute._fromState);

mixin $StoreRoute on GoRouteData {
  static StoreRoute _fromState(GoRouterState state) => const StoreRoute();

  @override
  String get location => GoRouteData.$location('/store');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $createFanHubRoute => GoRouteData.$route(
  path: '/create-hub',
  factory: $CreateFanHubRoute._fromState,
);

mixin $CreateFanHubRoute on GoRouteData {
  static CreateFanHubRoute _fromState(GoRouterState state) =>
      const CreateFanHubRoute();

  @override
  String get location => GoRouteData.$location('/create-hub');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $mainShellRoute => StatefulShellRouteData.$route(
  factory: $MainShellRouteExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(path: '/home', factory: $HomeRoute._fromState),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(path: '/explore', factory: $ExploreRoute._fromState),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/profile',
          factory: $UserProfileRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: 'bookmarks',
              factory: $BookmarkRoute._fromState,
            ),
            GoRouteData.$route(
              path: 'vtuber-application',
              factory: $VtuberApplicationRoute._fromState,
            ),
          ],
        ),
      ],
    ),
  ],
);

extension $MainShellRouteExtension on MainShellRoute {
  static MainShellRoute _fromState(GoRouterState state) =>
      const MainShellRoute();
}

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  @override
  String get location => GoRouteData.$location('/home');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ExploreRoute on GoRouteData {
  static ExploreRoute _fromState(GoRouterState state) => const ExploreRoute();

  @override
  String get location => GoRouteData.$location('/explore');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $UserProfileRoute on GoRouteData {
  static UserProfileRoute _fromState(GoRouterState state) =>
      const UserProfileRoute();

  @override
  String get location => GoRouteData.$location('/profile');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $BookmarkRoute on GoRouteData {
  static BookmarkRoute _fromState(GoRouterState state) => const BookmarkRoute();

  @override
  String get location => GoRouteData.$location('/profile/bookmarks');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $VtuberApplicationRoute on GoRouteData {
  static VtuberApplicationRoute _fromState(GoRouterState state) =>
      const VtuberApplicationRoute();

  @override
  String get location => GoRouteData.$location('/profile/vtuber-application');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $fanHubDetailRoute => GoRouteData.$route(
  path: '/explore/:subdomain',
  factory: $FanHubDetailRoute._fromState,
  routes: [
    GoRouteData.$route(path: 'create', factory: $CreatePostRoute._fromState),
    GoRouteData.$route(path: 'members', factory: $MemberListRoute._fromState),
    GoRouteData.$route(
      path: 'moderation',
      factory: $ModerationRoute._fromState,
    ),
  ],
);

mixin $FanHubDetailRoute on GoRouteData {
  static FanHubDetailRoute _fromState(GoRouterState state) => FanHubDetailRoute(
    subdomain: state.pathParameters['subdomain']!,
    fanHubId: int.parse(state.uri.queryParameters['fan-hub-id']!),
  );

  FanHubDetailRoute get _self => this as FanHubDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/explore/${Uri.encodeComponent(_self.subdomain)}',
    queryParams: {'fan-hub-id': _self.fanHubId.toString()},
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $CreatePostRoute on GoRouteData {
  static CreatePostRoute _fromState(GoRouterState state) => CreatePostRoute(
    subdomain: state.pathParameters['subdomain']!,
    fanHubId: int.parse(state.uri.queryParameters['fan-hub-id']!),
  );

  CreatePostRoute get _self => this as CreatePostRoute;

  @override
  String get location => GoRouteData.$location(
    '/explore/${Uri.encodeComponent(_self.subdomain)}/create',
    queryParams: {'fan-hub-id': _self.fanHubId.toString()},
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $MemberListRoute on GoRouteData {
  static MemberListRoute _fromState(GoRouterState state) => MemberListRoute(
    subdomain: state.pathParameters['subdomain']!,
    fanHubId: int.parse(state.uri.queryParameters['fan-hub-id']!),
  );

  MemberListRoute get _self => this as MemberListRoute;

  @override
  String get location => GoRouteData.$location(
    '/explore/${Uri.encodeComponent(_self.subdomain)}/members',
    queryParams: {'fan-hub-id': _self.fanHubId.toString()},
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ModerationRoute on GoRouteData {
  static ModerationRoute _fromState(GoRouterState state) => ModerationRoute(
    subdomain: state.pathParameters['subdomain']!,
    fanHubId: int.parse(state.uri.queryParameters['fan-hub-id']!),
    initialTab:
        _$convertMapValue(
          'initial-tab',
          state.uri.queryParameters,
          int.parse,
        ) ??
        0,
  );

  ModerationRoute get _self => this as ModerationRoute;

  @override
  String get location => GoRouteData.$location(
    '/explore/${Uri.encodeComponent(_self.subdomain)}/moderation',
    queryParams: {
      'fan-hub-id': _self.fanHubId.toString(),
      if (_self.initialTab != 0) 'initial-tab': _self.initialTab.toString(),
    },
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T? Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
