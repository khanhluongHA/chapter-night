import 'package:flutter/material.dart';

class IntroduceColum extends StatelessWidget {
  const IntroduceColum({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('data'),
        Text('data'),
        Text('data'),
      ],
    );
  }
}
