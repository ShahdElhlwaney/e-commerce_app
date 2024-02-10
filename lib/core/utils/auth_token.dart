import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const FlutterSecureStorage _secureStorage = FlutterSecureStorage();
const String key = 'auth_token';
// Store the token securely
Future<void> saveToken(String token) async {
  await _secureStorage.write(key: key, value: token);
}

// Retrieve the token securely
Future<String?> getToken() async {
  return await _secureStorage.read(key: key);
}

// Delete the stored token
Future<void> deleteToken() async {
  await _secureStorage.delete(key: key);
}
