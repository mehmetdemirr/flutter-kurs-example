void veriCek() {
  for (int i = 1; i <= 100; i++) {
    print(i);
  }
}

Future<String> veriCek1() async {
  for (int i = 1; i <= 100; i++) {
    Future.delayed(Duration(seconds: 1)).then((value) {
      print(i);
    });
  }

  return "kelime";
}

void main() async {
  // veriCek();
  String kelime = await veriCek1();
}
