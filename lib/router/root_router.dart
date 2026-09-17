import 'package:go_router/go_router.dart';
import 'package:learn_flutter_v3_47/modules/auth/router.dart';
import 'package:learn_flutter_v3_47/modules/splash/router.dart';
final List<RouteBase> publicRootRoute = [...splashRoute,...authRoute];
final List<RouteBase> privateRootRoute = [];
