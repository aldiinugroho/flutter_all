import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Page")),
      body: _mainbuild(),
    );
  }

  Widget _mainbuild() {
    final List<dynamic> listofimage = [
      {
        "image":
            "https://i.pinimg.com/originals/bc/c0/86/bcc0860537b4030e6e62fa0a38ef907b.jpg",
      },
      {
        "image":
            "https://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8&w=1000&q=80",
      },
      {
        "image": "https://images4.alphacoders.com/936/936378.jpg",
      },
      {
        "image": "https://wallpapercave.com/wp/wp9087904.jpg",
      }
    ];

    return SingleChildScrollView(
        child: Column(
      children: listofimage
          .map((item) => _imagecontaineruribuild(item["image"]))
          .toList(),
    ));
  }

  Widget _imagecontainerpathbuild(String path) {
    return Container(
        margin: EdgeInsets.all(20),
        width: double.infinity,
        height: 220,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: Colors.lightBlue, borderRadius: BorderRadius.circular(12)),
        child: Image.asset(path, fit: BoxFit.cover));
  }

  Widget _imagecontaineruribuild(String uri) {
    return Container(
        margin: EdgeInsets.all(20),
        width: double.infinity,
        height: 220,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            color: Colors.lightBlue, borderRadius: BorderRadius.circular(12)),
        child: Image.network(uri, fit: BoxFit.cover));
  }
}
