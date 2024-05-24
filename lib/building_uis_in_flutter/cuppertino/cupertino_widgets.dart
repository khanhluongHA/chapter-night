import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/building_uis_in_flutter/cuppertino/cupertino_page_scaffold.dart';

class CupertinoWidgets extends StatelessWidget {
  const CupertinoWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CupertinoButton(
            onPressed: () {},
            child: Text('data'),
          ),
          CupertinoTextField(
            placeholder: 'Enter text',
            onChanged: (value) {},
          ),
          CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              // middle: Text('My Page'),
              trailing: CupertinoButton(
                child: Text('edit'),
                onPressed: () {},
              ),
            ),
            child: Center(
              child: Text('conten goes here'),
            ),
          )
        ],
      ),
    );
  }
}
