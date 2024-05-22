import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IntroduceContainer extends StatelessWidget {
  const IntroduceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        // color: Colors.pink,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.black,
          ],
        ),
      ),
      child: const Icon(
        Icons.person,
        size: 90,
      ),
    );
  }
}
// margin khoảng cách xung quanh
// pading viền bên trong của container