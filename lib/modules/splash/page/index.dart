import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter_v3_47/helpers/storages/secure_storage.dart';
import 'package:learn_flutter_v3_47/router/paths.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _bootstrap();
  }
  Future<void> _bootstrap() async {
    // 1) Chờ vài giây cho đẹp (loading)
    await Future.delayed(const Duration(seconds: 2));

    // 2) Kiểm tra token / session (tạm để false)
    final isLoggedIn = await AuthStorage.checkAuth();

    // 3) Bắt buộc check mounted trước khi dùng context sau await
    if (!mounted) return;

    // 4) Điều hướng
    if (isLoggedIn) {
      context.go(Paths.home);
    } else {
      context.go(Paths.login);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('Splash Page'),
      ),
    );
  }
}