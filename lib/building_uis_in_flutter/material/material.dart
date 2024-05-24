// nó chứa các thành phần như:
// AppBar thanh đầu của trang ứng dụng
// button chứa các loại: nút phẳng nút ấn lâu, nút raised, và nút floating action button
// scaffold: widget để xây dựng cơ bản gồm AppBar, Body và nhiều thành phần khác
// TextFeild: ô nhập liệu cho phép người dùng nhập văn bản
// Card: cung cấp 1 cách hiển thị trong khung có độ bo
// diaLog: Hiển thị hộp Thoại tạm thời,  thường đc dùng để xác nhận thông tin
// BottomSheet: Hiển thị một phần nằm bên dưới màn hình thường đc sử dụng cho hành động bổ xung hoặc tùy chọn
// SnackBar: thông báo ngắn xuống dưới cùng màn hình để thông báo tạm thời hoặc cảnh báo
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('..'),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              'TextField Example',
              style: TextStyle(fontSize: 16),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter Your name'),
              ),
            ),
            const Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'this is card',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(20),
        child: Text('this is botom'),
      ),
    );
  }
}
