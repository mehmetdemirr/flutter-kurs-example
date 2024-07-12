import 'package:ders12/views/home/post_model.dart';
import 'package:ders12/views/home/post_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PostModel>? liste;
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then((value) async {
      liste = await PostService().fetchPostList();
      PostModel? model = await PostService().fetchPost(10);

      setState(() {
        isLoading = false;
      });
      print("listede kaç post var : ${liste?.length}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Anasayfa",
          ),
        ),
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : liste == null || liste!.isEmpty
                ? const Text("Post bulunmadı !")
                : ListView.builder(
                    itemCount: liste?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(liste?[index].id.toString() ?? "-"),
                                Text(liste?[index].title ?? "-"),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ));
  }
}
