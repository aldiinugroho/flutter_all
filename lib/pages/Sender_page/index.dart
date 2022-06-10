import 'package:flutter/material.dart';
import 'package:my_app_learn/pages/Receive_page/index.dart';

class SenderPage extends StatefulWidget {
  SenderPage({Key? key}) : super(key: key);

  @override
  State<SenderPage> createState() => _SenderPageState();
}

class _SenderPageState extends State<SenderPage> {
  void tappedbutton() {
    String datainput = '123';
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReceivePage(),
        settings: RouteSettings(
          arguments: datainput,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sender page")),
      body: _mainbodybuild(),
    );
  }

  Widget _mainbodybuild() {
    return ElevatedButton(
        onPressed: () => {tappedbutton()},
        child: Text("go to receive page with param"));
  }
}
