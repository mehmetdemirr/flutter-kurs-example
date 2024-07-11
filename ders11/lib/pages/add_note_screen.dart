import 'package:ders11/data/local_storage.dart';
import 'package:ders11/model/note_model.dart';
import 'package:ders11/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:uuid/uuid.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final _noteFormKey = GlobalKey<FormState>();
  final TextEditingController _title = TextEditingController();
  final TextEditingController _description = TextEditingController();
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return const HomeScreen();
                },
              ),
            );
          },
        ),
        title: const Text("Not Ekle"),
      ),
      body: Column(
        children: [
          Form(
            key: _noteFormKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    maxLines: 2,
                    controller: _title,
                    decoration: const InputDecoration(
                      hintText: "Başlık giriniz...",
                      labelText: "Başlık",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Başlık zorunlu alan !";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    maxLines: 4,
                    controller: _description,
                    decoration: const InputDecoration(
                      hintText: "Açıklama giriniz...",
                      labelText: "Açıklama",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Açıklama zorunlu alan !";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 15),
                CheckboxListTile.adaptive(
                  title: const Text("Tamamlandı mı ? "),
                  value: status,
                  onChanged: (value) {
                    setState(() {
                      status = value ?? false;
                    });
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () async {
                    if (_noteFormKey.currentState!.validate()) {
                      //her şey yolunda
                      print("her şey yolunda");
                      NoteModel not = NoteModel(
                        id: const Uuid().v1(),
                        title: _title.text,
                        description: _description.text,
                        status: status,
                        createAtDatetime: DateTime.now(),
                      );
                      await LocalStorage().addNote(not).then((_) {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return const HomeScreen();
                            },
                          ),
                        );
                      });
                    } else {
                      EasyLoading.showError(
                          "Lütfen zorunlu alanları doldurunuz !");
                    }
                  },
                  child: const Text("Notu Ekle"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
