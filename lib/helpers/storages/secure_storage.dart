import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Khi cần tinh chỉnh chi tiết Android (encryptedSharedPreferences, resetOnError...)
// final storage = FlutterSecureStorage(
//   aOptions: AndroidOptions(),
// );

// Muốn có tuỳ chọn xác thực vân tay, nhưng user có thể bỏ qua
// final storage = FlutterSecureStorage(
//   aOptions: AndroidOptions.biometric(
//     enforceBiometrics: false, // Works without biometrics
//     biometricPromptTitle: 'Authenticate to access data',
//   ),
// );

// Bắt buộc vân tay/PIN mới đọc được data (ví dụ: ví crypto, app ngân hàng)
// final storage = FlutterSecureStorage(
//   aOptions: AndroidOptions.biometric(
//     enforceBiometrics: true, // Requires biometric/PIN/pattern
//     biometricPromptTitle: 'Authentication Required',
//   ),
// );

class AuthStorage {
  AuthStorage._(); // chặn khởi tạo ngoài — vì toàn static

  static const _kTokenKey = 'access_token';

  static const storage = FlutterSecureStorage(
    aOptions: AndroidOptions(resetOnError: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  // Lưu token
  static Future<void> saveToken(String token) =>
      storage.write(key: _kTokenKey, value: token);

  // Lấy token
  static Future<String?> getToken() => storage.read(key: _kTokenKey);

  // Xoá tất cả
  static Future<void> clear() => storage.deleteAll();

  // Kiểm tra đã login chưa
  static Future<bool> checkAuth() async {
    try {
      final token = await getToken();
      return token != null && token.isNotEmpty;
    } catch (_) {
      await clear();
      return false;
    }
  }
}
