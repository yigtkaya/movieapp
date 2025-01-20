import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

/// Root navigator key for the app.
final rootNavigatorKey = GlobalKey<NavigatorState>();

/// AppRouter is the main router of the app.
@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  /// Constructor for AppRouter.
  AppRouter() : super(navigatorKey: rootNavigatorKey);

  /// Default route type for the app.
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: MovieSearchRoute.page,
        ),
      ];
}
