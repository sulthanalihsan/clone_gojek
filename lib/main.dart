import 'package:clone_gojek/page/account.dart';
import 'package:clone_gojek/page/chat.dart';
import 'package:clone_gojek/page/home.dart';
import 'package:clone_gojek/page/inbox.dart';
import 'package:clone_gojek/page/orders.dart';
import 'package:clone_gojek/page/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'MaisonNeue',
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTab = 0;
  final _layout = [Home(), Orders(), Chat(), Inbox(), Account()];

  void _onTabItem(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Workshop Flutter Imastudio")),
      body: _layout.elementAt(_selectedTab),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        onTap: _onTabItem,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/home.png', scale: 2.5),
              ),
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/home-non.png', scale: 2.5),
              ),
              title: Text("Home")),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/orders.png', scale: 2.5),
              ),
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/orders-non.png', scale: 2.5),
              ),
              title: Text("Orders")),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/chat.png', scale: 2.5),
              ),
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/chat-non.png', scale: 2.5),
              ),
              title: Text("Chat")),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/inbox.png', scale: 2.5),
              ),
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/inbox-non.png', scale: 2.5),
              ),
              title: Text("Inbox")),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/account.png', scale: 2.5),
              ),
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Image.asset('images/account-non.png', scale: 2.5),
              ),
              title: Text("Account")),
        ],
      ),
    );
  }
}
