import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test/architecture/element_and_render_object.dart';
import 'package:test/keys/keys.dart';
import 'package:test/rebuilds_and_optimization/prefer_widget_composition_over_functions.dart';
import 'package:test/widgets_and_state/container.dart';
import 'package:test/widgets_and_state/list_view.dart';
import 'package:test/widgets_and_state/stack_and_positioned.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Basic'),
        ),
      ),
    );
  }
}
