import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  Items({super.key});
  final List<String> items = ['item1', 'item2', 'item3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Items'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              items[index],
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail',
                arguments: items[index],
              );
            },
          );
        },
      ),
    );
  }
}
