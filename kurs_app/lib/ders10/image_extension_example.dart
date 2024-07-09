enum ImageItem {
  flutterLogo,
  restful,
}

extension ImageItemExtension on ImageItem {
  String str() {
    String asset = "assets/images";
    switch (this) {
      case ImageItem.flutterLogo:
        return "$asset/flutter-logo.png";
      case ImageItem.restful:
        return "$asset/restful.png";
    }
  }
}
