import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class StorageRepository {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Create (Save) methods

  static Future<void> putString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  static Future<void> putInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }

  static Future<void> putDouble(String key, double value) async {
    await _prefs.setDouble(key, value);
  }

  static Future<void> putBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  static Future<void> putObject(String key, Object value) async {
    final jsonString = json.encode(value);
    await _prefs.setString(key, jsonString);
  }

  // Read methods

  static String getString(String key,[String defaultValue = '']) {
    return _prefs.getString(key) ?? defaultValue;
  }

  static int? getInt(String key) {
    return _prefs.getInt(key);
  }

  static double? getDouble(String key) {
    return _prefs.getDouble(key);
  }

  static bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  static dynamic getObject(String key) {
    final jsonString = _prefs.getString(key);
    if (jsonString != null) {
      return json.decode(jsonString);
    }
    return null;
  }

  // Update (Modify) methods

  static Future<void> updateString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  static Future<void> updateInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }

  static Future<void> updateDouble(String key, double value) async {
    await _prefs.setDouble(key, value);
  }

  static Future<void> updateBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  static Future<void> updateObject(String key, Object value) async {
    final jsonString = json.encode(value);
    await _prefs.setString(key, jsonString);
  }

  // Delete methods

  static Future<void> delete(String key) async {
    await _prefs.remove(key);
  }

  // Clear all preferences

  static Future<void> clearAll() async {
    await _prefs.clear();
  }
}
