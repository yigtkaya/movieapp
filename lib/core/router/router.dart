import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/features/auth/presentation/forgot_password_view.dart';
import 'package:movieapp/features/auth/presentation/login_view.dart';
import 'package:movieapp/features/auth/presentation/sign_up_view.dart';
import 'package:movieapp/features/bookmarks/presentation/bookmarks_view.dart';
import 'package:movieapp/features/home/data/models/response/article_model.dart';
import 'package:movieapp/features/home/presentation/home_view.dart';
import 'package:movieapp/features/news_detail/presentation/news_detail_view.dart';
import 'package:movieapp/features/onboarding/onboarding_view.dart';
import 'package:movieapp/features/root/root_view.dart';
import 'package:movieapp/features/splash/splash_view.dart';

part 'app_router.gr.dart';

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
          page: HomeRoute.page,
        ),
      ];
}
