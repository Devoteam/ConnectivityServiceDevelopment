import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/presentation/shell_navigation_scaffold.dart';
import '../common/presentation/under_construction_page.dart';

class AppNavigator {
  static final AppNavigator _instance = AppNavigator._internal();

  static AppNavigator get instance => _instance;

  late final GoRouter router;

  final GlobalKey<NavigatorState> parentNavigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

  static const String careConnectRemoteAccess = '/';
  static const String infotainmentOnline = '/infotainmentOnline';
  static const String traffication = '/traffication';
  static const String payToPark = '/payToPark';
  static const String payToFuel = '/payToFuel';
  static const String ambientLighting = '/ambientLighting';

  factory AppNavigator() {
    return _instance;
  }

  AppNavigator._internal() {
    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      routes: [
        ShellRoute(
          builder: (
            context,
            state,
            child,
          ) =>
              ShellNavigationScaffold(
            child: child,
          ),
          navigatorKey: shellNavigatorKey,
          routes: [
            GoRoute(
              parentNavigatorKey: shellNavigatorKey,
              path: careConnectRemoteAccess,
              pageBuilder: (context, state) {
                return _getPage(
                  child: const UnderConstructionPage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              parentNavigatorKey: shellNavigatorKey,
              path: infotainmentOnline,
              pageBuilder: (context, state) {
                return _getPage(
                  child: const UnderConstructionPage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              parentNavigatorKey: shellNavigatorKey,
              path: traffication,
              pageBuilder: (context, state) {
                return _getPage(
                  child: const UnderConstructionPage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              parentNavigatorKey: shellNavigatorKey,
              path: payToPark,
              pageBuilder: (context, state) {
                return _getPage(
                  child: const UnderConstructionPage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              parentNavigatorKey: shellNavigatorKey,
              path: payToFuel,
              pageBuilder: (context, state) {
                return _getPage(
                  child: const UnderConstructionPage(),
                  state: state,
                );
              },
            ),
            GoRoute(
              parentNavigatorKey: shellNavigatorKey,
              path: ambientLighting,
              pageBuilder: (context, state) {
                return _getPage(
                  child: const UnderConstructionPage(),
                  state: state,
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  static Page _getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return NoTransitionPage(
      key: state.pageKey,
      child: child,
    );
  }
}
