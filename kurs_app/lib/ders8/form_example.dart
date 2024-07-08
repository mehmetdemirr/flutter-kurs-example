import 'package:flutter/material.dart';
import 'package:kurs_app/ders8/home_screen.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final TextEditingController _mail = TextEditingController();
  final TextEditingController _parola = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String mail = "test@test.com";
  String parola = "12345678";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Örnek"),
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: _mail,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.mail_outlined),
                      hintText: "Email adresiniz giriniz ...",
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email zorunlu alan !";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: _parola,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key),
                      hintText: "Parolanızı giriniz ...",
                      labelText: "Parola",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Parola zorunlu alan !";
                      }
                      if (value.length < 6) {
                        return "Parolanız min 6 karakterden olmalı !";
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //buraya çalışacak kod bloğu konur
                      //yani validatorlerden geçmiş veri
                      if (_mail.text == mail && _parola.text == parola) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomeScreen();
                            },
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text("Mail veya parolanız hatalı !"),
                            action: SnackBarAction(
                              label: "Tamam",
                              onPressed: () {},
                            ),
                          ),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Form alanını düzgün doldurunuz !"),
                        ),
                      );
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
