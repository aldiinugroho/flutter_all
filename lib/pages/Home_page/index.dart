import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: _initialpage(),
    );
  }

  Widget _initialpage() {
    return SizedBox(width: double.infinity, child: _listofcontent());
  }

  Widget _listofcontent() {
    return Column(
      children: [_listofbutton()],
    );
  }

  Widget _componentitem(String title) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 65,
      height: 65,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              blurRadius: 2,
              offset: Offset(0, 0),
            )
          ]),
      child: _componentiteminside(title),
    );
  }

  Widget _componentiteminside(String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_componentiteminsideimage(), _componentiteminsidetitle(title)],
    );
  }

  Widget _componentiteminsideimage() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 45,
      color: Colors.white,
      child: Text("image"),
    );
  }

  Widget _componentiteminsidetitle(String title) {
    return Container(
      alignment: Alignment.center,
      color: Colors.lightBlue,
      child: Text(title),
    );
  }

  Widget _bannerinfo() {
    return Container(
      margin: const EdgeInsets.all(20),
      color: Colors.red,
      child: const Text("ini info aja"),
    );
  }

  Widget _listofbutton() {
    final List<dynamic> myarraypages = [
      {"page": "/covidpage", "pagename": "Covid"},
      {"page": "/localstatedatapage", "pagename": "local"},
      {"page": "/webviewpage", "pagename": "webview"},
      {"page": "/imagepage", "pagename": "image"},
      {"page": "/formpage", "pagename": "form"},
      {"page": "/senderpage", "pagename": "sender"},
      {"page": "/receivepage", "pagename": "receive"}
    ];

    List<Widget> widgets = myarraypages
        .map((i) => GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(i["page"]),
            child: _componentitem(i["pagename"].length > 5
                ? i["pagename"].substring(0, 4) + '...'
                : i["pagename"])))
        .toList();
    return Wrap(
      spacing: 30,
      children: widgets,
    );
  }
}
