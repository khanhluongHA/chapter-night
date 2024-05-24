import 'package:flutter/material.dart';

class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // showDialog(
        //   context: context,
        //   builder: (BuildContext context) {
        //     return AlertDialog(
        //       title: const Text('Thông báo'),
        //       content: Text('chắc chắn bạn có muốn xóa'),
        //       actions: [
        //         TextButton(
        //           onPressed: () {
        //             Navigator.of(context).pop();
        //           },
        //           child: Text('Hủy bỏ'),
        //         ),
        //         TextButton(
        //           onPressed: () {},
        //           child: Text('Đồng ý'),
        //         ),
        //       ],
        //     );
        //   },
        // ),
      ],
    );
  }
}
