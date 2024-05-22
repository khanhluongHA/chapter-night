import 'package:flutter/material.dart';

class IntroduceRow extends StatelessWidget {
  const IntroduceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('hello'),
        Text('hello'),
        Text('hello'),
      ],
    );
  }
}
