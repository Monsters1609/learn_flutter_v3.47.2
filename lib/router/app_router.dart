import 'package:go_router/go_router.dart';
import 'package:learn_flutter_v3_47/modules/error/page/index.dart';
import 'package:learn_flutter_v3_47/router/paths.dart';
import 'package:learn_flutter_v3_47/router/root_router.dart';

class AppRouter {
  static bool get isAuthentication => false;

  static List<RouteBase> get rootRouter => isAuthentication ? [...privateRootRoute] : [...publicRootRoute];
  static GoRouter get router => GoRouter(
    initialLocation: Paths.splash,
    routes: rootRouter,
    errorBuilder: (context, state) => const ErrorPage(),
  );
}