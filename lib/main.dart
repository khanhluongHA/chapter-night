import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/routes_and_navigation/basics_of_navigation_and_routing/lesson/homepage.dart';
import 'package:test/routes_and_navigation/basics_of_navigation_and_routing/lesson/screen_two.dart';
// import 'package:test/architecture/element_and_render_object.dart';
// import 'package:test/building_uis_in_flutter/cuppertino/cupertino_page_scaffold.dart';
// import 'package:test/building_uis_in_flutter/cuppertino/cupertino_widgets.dart';
// import 'package:test/building_uis_in_flutter/cuppertino/cuppertino.dart';
// import 'package:test/building_uis_in_flutter/material/material.dart';
// import 'package:test/building_uis_in_flutter/material/material_widgets/buttons.dart';
// import 'package:test/building_uis_in_flutter/responsive_uis/layout_builder.dart';
// import 'package:test/screen_animations/animate_a_widget_across_screens.dart';
// import 'package:test/keys/keys.dart';
// import 'package:test/rebuilds_and_optimization/prefer_widget_composition_over_functions.dart';
// import 'package:test/widgets_and_state/container.dart';
// import 'package:test/widgets_and_state/list_view.dart';
// import 'package:test/widgets_and_state/stack_and_positioned.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          title: const Text(
            'Flutter',
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.info,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: MaterialApp(
          title: 'shooping app',
          initialRoute: '/',
          routes: {
            '/': (context) => Items(),
            '/detail': (context) => const ScreenTwos(),
          },
        ),
      ),
    );
  }
}
