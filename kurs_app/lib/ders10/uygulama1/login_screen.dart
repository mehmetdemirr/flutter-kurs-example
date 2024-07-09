import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:kurs_app/ders10/uygulama1/cached/shared_pref.dart';
import 'package:kurs_app/ders10/uygulama1/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _mail = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: _mail,
                    decoration: const InputDecoration(
                      hintText: "Mail giriniz...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Mail alanı zorunlu !";
                      }
                      String pattern =
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                      RegExp regex = RegExp(pattern);
                      if (!regex.hasMatch(value)) {
                        return 'Geçerli bir mail adresi giriniz';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(
                      hintText: "Parolanızı giriniz...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Parola alanı zorunlu !";
                      }
                      if (value.length < 6) {
                        return "Min 6 karakter giriniz";
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      //hata yoksa kullanıcı benim istediğim formatta girmişse
                      await SharedPref().writeLogin(true).then((value) {
                        EasyLoading.showSuccess("Giriş Başarılı");
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomeScreen();
                            },
                          ),
                        );
                      });
                    } else {
                      //hatalı doldurmuşsa burası çalışacak
                      EasyLoading.showError("Lütfen düzgün doldurunuz !");
                    }
                  },
                  child: const Text("Giriş Yap"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
