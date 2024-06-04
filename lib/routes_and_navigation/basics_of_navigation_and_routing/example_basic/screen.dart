import 'package:flutter/material.dart';
// import 'package:test/building_uis_in_flutter/material/material.dart';
import 'package:test/routes_and_navigation/basics_of_navigation_and_routing/example_basic/routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter routes example',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/detail': (context) => const DetailPage()
      },
    );
  }
}
