import 'package:flutter/material.dart';

class StackAndPositioned extends StatelessWidget {
  const StackAndPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.amber,
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            child: Center(
              child: Text(
                'data',
                style: TextStyle(fontSize: 30),
              ),
            ),
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
