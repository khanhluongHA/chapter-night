// scrolling là khi chúng ta xây dựng dao diện người dùng  khi vượt quá kích thước
// chúng ta sẽ sử dụng scrolling để cuộn những cái không nhìn thấy
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollingDemo extends StatelessWidget {
  const ScrollingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          20,
          (index) => Container(
            height: 100,
            color: index % 2 == 0 ? Colors.blue[200] : Colors.pink[200],
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
