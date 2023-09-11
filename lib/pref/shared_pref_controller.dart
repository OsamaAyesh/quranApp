import 'package:shared_preferences/shared_preferences.dart';

enum PrefKeys {pageSaves,pageViewSaves,screeNumber}

class SharedPrefController {
  late SharedPreferences _sharedPreferences;

  static SharedPrefController? _instance;

  SharedPrefController._();

  factory SharedPrefController() {
    return _instance ??= SharedPrefController._();
  }

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> setValue<T>(String key, T value) async {
    if (T == String) {
      await _sharedPreferences.setString(key, value as String);
    } else if (T == bool) {
      await _sharedPreferences.setBool(key, value as bool);
    } else if (T == int) {
      await _sharedPreferences.setInt(key, value as int);
    } else if (T == double) {
      await _sharedPreferences.setDouble(key, value as double);
    }
  }

  Future<void> save({int pageSaves=1,int pageViewSaves=1,screenNumber=0}) async {
    await _sharedPreferences.setInt(PrefKeys.pageSaves.name,pageSaves );
    await _sharedPreferences.setInt(PrefKeys.pageViewSaves.name,pageViewSaves);
    await _sharedPreferences.setString(PrefKeys.screeNumber.name,screenNumber );
  }

  T? getValue<T>(String key) {
    if (_sharedPreferences.containsKey(key)) {
      return _sharedPreferences.get(key) as T;
    }
    return null;
  }

  Future<bool> removeValueFor(String key) async {
    if (_sharedPreferences.containsKey(key)) {
      return _sharedPreferences.remove(key);
    }
    return false;
  }

  Future<bool> clear() async {
    return _sharedPreferences.clear();
  }
}
