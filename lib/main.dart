import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_flutter_v3_47/helpers/storages/prefs_storage.dart';
import 'package:learn_flutter_v3_47/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // bắt buộc vì bên dưới có await plugin
  // Init các storage
  await PrefsStorage.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
