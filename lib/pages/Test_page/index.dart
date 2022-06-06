import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _testPageState createState() => _testPageState();
}

class _testPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test Page')),
      body: _testpage(),
    );
  }

  Widget _testpage() {
    return const Text("yaudah");
  }
}
