import 'package:shared_preferences/shared_preferences.dart';

class PrefsStorage {
  PrefsStorage._(); // chặn khởi tạo ngoài — toàn static

  static SharedPreferences? prefs;

  /// Bắt buộc gọi 1 lần trong main() trước runApp
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  /// Getter an toàn — throw rõ ràng nếu chưa init
  static SharedPreferences get _instance {
    final p = prefs;
    if (p == null) {
      throw StateError(
        'PrefsStorage chưa được init. Gọi `await PrefsStorage.init()` trong main() trước runApp().',
      );
    }
    return p;
  }

  // ─────────────────────────────────────────────
  // STRING
  // ─────────────────────────────────────────────
  static String? getString(String key) => _instance.getString(key);
  static Future<bool> setString(String key, String value) =>
      _instance.setString(key, value);

  // ─────────────────────────────────────────────
  // INT
  // ─────────────────────────────────────────────
  static int? getInt(String key) => _instance.getInt(key);
  static Future<bool> setInt(String key, int value) =>
      _instance.setInt(key, value);

  // ─────────────────────────────────────────────
  // DOUBLE
  // ─────────────────────────────────────────────
  static double? getDouble(String key) => _instance.getDouble(key);
  static Future<bool> setDouble(String key, double value) =>
      _instance.setDouble(key, value);

  // ─────────────────────────────────────────────
  // BOOL
  // ─────────────────────────────────────────────
  static bool? getBool(String key) => _instance.getBool(key);
  static Future<bool> setBool(String key, bool value) =>
      _instance.setBool(key, value);

  // ─────────────────────────────────────────────
  // LIST<String>
  // ─────────────────────────────────────────────
  static List<String>? getStringList(String key) =>
      _instance.getStringList(key);
  static Future<bool> setStringList(String key, List<String> value) =>
      _instance.setStringList(key, value);

  // ─────────────────────────────────────────────
  // XOÁ
  // ─────────────────────────────────────────────
  static Future<bool> remove(String key) => _instance.remove(key);
  static Future<bool> clear() => _instance.clear();

  // ─────────────────────────────────────────────
  // KIỂM TRA KEY CÓ TỒN TẠI KHÔNG
  // ─────────────────────────────────────────────
  static bool containsKey(String key) => _instance.containsKey(key);

  // ─────────────────────────────────────────────
  // LẤY TẤT CẢ KEYS (debug)
  // ─────────────────────────────────────────────
  static Set<String> getKeys() => _instance.getKeys();
}