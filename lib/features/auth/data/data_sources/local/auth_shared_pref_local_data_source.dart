import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/core/error/exceptions.dart';
import 'package:ecommerce/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: AuthLocalDataSource)
class AuthSharedPrefLocalDataSource extends AuthLocalDataSource {
  final SharedPreferences sharedPref;

  AuthSharedPrefLocalDataSource(this.sharedPref);

  @override
  Future<void> saveToken(String token) async {
    try {
      await sharedPref.setString(CacheConstants.tokenKey, token);
    } catch (_) {
      throw const LocalException('Failed to save token');
    }
  }

  @override
  Future<String> getToken() async {
    try {
      return sharedPref.getString(CacheConstants.tokenKey)!;
    } catch (_) {
      throw const LocalException('Failed to get token');
    }
  }
}
