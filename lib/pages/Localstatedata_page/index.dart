import 'package:flutter/material.dart';

class LocalstatedataPage extends StatefulWidget {
  @override
  _LocalstatedataPageState createState() => _LocalstatedataPageState();
}

class _LocalstatedataPageState extends State<LocalstatedataPage> {
  String? _texttodisplay;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    print("_LocalstatedataPageState | loaded");
  }

  void _settonewstate() {
    setState(() {
      _texttodisplay = "hai aldi";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Localstatedata Page")),
      body: _btnntext(),
    );
  }

  Widget _btnntext() {
    return Row(
      children: [_btntoset(), _textdisplay()],
    );
  }

  Widget _textdisplay() {
    return Text(_texttodisplay ?? "");
  }

  Widget _btntoset() {
    return ElevatedButton(
        onPressed: () => _settonewstate(),
        child: const Text("set text to \"hai aldi\""));
  }
}
