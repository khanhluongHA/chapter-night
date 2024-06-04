import 'package:flutter/material.dart';

class ScreenTwos extends StatelessWidget {
  const ScreenTwos({super.key});

  @override
  
  Widget build(BuildContext context) {
    final Object? item = ModalRoute.of(context)?.settings.arguments; 
    return Scaffold(
      appBar: AppBar(
        title: const Text('this is screen two'),
      ),
      body: Center(
        child: Text('item: $item'),
      ),
    );
  }
}