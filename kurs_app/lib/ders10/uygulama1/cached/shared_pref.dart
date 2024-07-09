import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  Future<void> writeLogin(bool value) async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(SharedKeys.login.name, value);
  }

  Future<bool> readLogin() async {
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(SharedKeys.login.name) ?? false;
  }
}

enum SharedKeys {
  login,
  theme,
}

// extension SharedKeysExtension on SharedKeys {
//   String str() {
//     switch (this) {
//       case SharedKeys.login:
//         return "login";
//       case SharedKeys.theme:
//         return "theme";
//     }
//   }
// }