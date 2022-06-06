import 'package:flutter/material.dart';
import 'package:my_app_learn/pages/Covid_page/index.dart';
import 'package:my_app_learn/pages/Form_page/index.dart';
import 'package:my_app_learn/pages/Image_page/index.dart';
import 'package:my_app_learn/pages/Initial_page/index.dart';
import 'package:my_app_learn/pages/Localstatedata_page/index.dart';
import 'package:my_app_learn/pages/Test_page/index.dart';
import 'package:my_app_learn/pages/Webview_page/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: <String, WidgetBuilder>{
      '/': (BuildContext context) => InitialPage(),
      '/testpage': (BuildContext context) => TestPage(),
      '/covidpage': (BuildContext context) => CovidPage(),
      '/localstatedatapage': (BuildContext context) => LocalstatedataPage(),
      '/webviewpage': (BuildContext context) => WebviewPage(),
      '/imagepage': (BuildContext context) => ImagePage(),
      '/formpage': (BuildContext context) => FormPage(),
    });
  }
}
