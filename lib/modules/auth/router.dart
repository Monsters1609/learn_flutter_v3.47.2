import 'package:go_router/go_router.dart';
import 'package:learn_flutter_v3_47/modules/auth/sign_in/page/index.dart';
import 'package:learn_flutter_v3_47/router/paths.dart';

final List<RouteBase> authRoute = [
  GoRoute(
    path: Paths.login,
    name: Paths.login,
    builder: (context, state) => const SignInPage(),
  ),
];
