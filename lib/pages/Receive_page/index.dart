import 'package:flutter/material.dart';

class ReceivePage extends StatefulWidget {
  ReceivePage({Key? key}) : super(key: key);

  @override
  State<ReceivePage> createState() => _ReceivePageState();
}

class _ReceivePageState extends State<ReceivePage> {
  String datainputget = '';
  @override
  Widget build(BuildContext context) {
    setState(() {
      if (ModalRoute.of(context)!.settings.arguments == null) {
        datainputget = '';
      } else {
        datainputget = (ModalRoute.of(context)!.settings.arguments as String);
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text("Receive page")),
      body: _mainbodybuild(),
    );
  }

  Widget _mainbodybuild() {
    return Text(datainputget);
  }
}
