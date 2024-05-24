// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutBuilders extends StatelessWidget {
  const LayoutBuilders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber[50],
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Center(
              child: Text(
                'Max width: ${constraints.maxWidth}, MaxHeight: ${constraints.maxHeight}',
                style: TextStyle(color: Colors.black),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class LayoutDemo extends StatefulWidget {
  const LayoutDemo({super.key});

  @override
  State<LayoutDemo> createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  Color _boxColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return GestureDetector(
              // GestureDetector là một hàm để sử lý các sự kiện như nhấn giữ vuốt chạm kéo
              // onTap: khi người dùng chạm vào widget
              // onDoubleTap: khi người dùng chạm vào 2 lần trong thời gian ngắn
              // onLongPress: được gọi khi người dùng chạm vào lâu
              onTap: () {
                setState(() {
                  _boxColor =
                      _boxColor == Colors.blue ? Colors.red : Colors.blue;
                });
              },
              child: Container(
                width: constraints.maxWidth * 0.8,
                height: constraints.maxHeight * 0.8,
                color: _boxColor,
                child: Center(
                  child: Text(
                    'Tap me',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
