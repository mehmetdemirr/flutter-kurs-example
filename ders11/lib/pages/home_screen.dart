import 'package:ders11/data/local_storage.dart';
import 'package:ders11/model/note_model.dart';
import 'package:ders11/pages/add_note_screen.dart';
import 'package:ders11/pages/note_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NoteModel> liste = [];
  @override
  void initState() {
    super.initState();
    fetchList();
  }

  void fetchList() {
    liste = LocalStorage().fetchList();
    print("listenin lengthi : ${liste.length}");
    setState(() {});
  }

  String lottiePath = "assets/json/not-found.json";

  @override
  Widget build(BuildContext context) {
    var screeSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
      ),
      body: liste.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    width: screeSize.width / 1.5,
                    lottiePath,
                  ),
                  const Text("Not bulunamadı !"),
                ],
              ),
            )
          : ListView.builder(
              itemCount: liste.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return NoteDetailScreen(
                              note: liste[index],
                            );
                          },
                        ),
                      );
                    },
                    child: _card(index, context),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return const AddNoteScreen();
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Card _card(int index, BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  liste[index].title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  liste[index].description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const Spacer(),
            Checkbox.adaptive(
              value: liste[index].status,
              onChanged: (value) async {
                NoteModel newNote = NoteModel(
                  id: liste[index].id,
                  title: liste[index].title,
                  description: liste[index].description,
                  status: value ?? false,
                  createAtDatetime: liste[index].createAtDatetime,
                );
                await LocalStorage().updateNote(newNote).then((_) {
                  if (value ?? false) {
                    print("true oldu");
                    EasyLoading.showSuccess("Başarılı !");
                  } else {
                    EasyLoading.showError("Tamamlanmadı !");
                  }
                });
                fetchList();
              },
            ),
          ],
        ),
      ),
    );
  }
}
