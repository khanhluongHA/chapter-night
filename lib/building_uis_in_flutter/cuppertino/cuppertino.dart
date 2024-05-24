import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertino extends StatelessWidget {
  const MyCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Cupertino App"),
        ),
        child: Center(
          child: Text("Cupertino theme!"),
        ),
      ),
    );
  }
}
