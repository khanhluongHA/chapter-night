import 'package:flutter/material.dart';

class IntroduceListView extends StatelessWidget {
  const IntroduceListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          child: Center(
            child: Text('Item $index', style: TextStyle(color: Colors.black)),
          ),
        );
      },
    );
  }
}
