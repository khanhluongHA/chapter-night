import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuppertinoScaffoldPage extends StatelessWidget {
  const CuppertinoScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Colors.amber, // màu nền của thanh đâu trang
        middle: Text(
          'My Advanced Page',
          style: TextStyle(color: CupertinoColors.activeBlue),
        ),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {},
          color: Colors.blue[200],
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          borderRadius: BorderRadius.circular(8),
          child: const Text('Press Me'),
        ),
      ),
    );
  }
}

// ví dụ khác
class MyHomePages extends StatefulWidget {
  const MyHomePages({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePages> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    HomeWidget(),
    EmailWidget(),
    const MenuWidget(),
  ];
  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: 'Email'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Screen'),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Menu Screen'),
    );
  }
}

class EmailWidget extends StatelessWidget {
  const EmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Email Screen'),
    );
  }
}
