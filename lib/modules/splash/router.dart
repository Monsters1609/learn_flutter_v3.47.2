import 'package:go_router/go_router.dart';
import 'package:learn_flutter_v3_47/modules/splash/page/index.dart';
import 'package:learn_flutter_v3_47/router/paths.dart';

final List<RouteBase> splashRoute = [
  GoRoute(
    path: Paths.splash,
    name: Paths.splash,
    builder: (context, state) => const SplashPage(),
  ),
];
