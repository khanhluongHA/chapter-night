import 'package:flutter/material.dart';

class IntroduceKeys extends StatelessWidget {
  // Tạo một GlobalKey để tham chiếu đến widget Text
  final GlobalKey<TextState> textKey = GlobalKey();

  IntroduceKeys({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextWidget(key: textKey),
        ElevatedButton(
          onPressed: () {
            // Gọi hàm changeText() trong TextWidget
            textKey.currentState?.changeText();
          },
          child: Text('Change Text'),
        ),
      ],
    );
  }
}

class TextWidget extends StatefulWidget {
  TextWidget({Key? key}) : super(key: key);

  @override
  TextState createState() => TextState();
}

class TextState extends State<TextWidget> {
  String text = 'Initial Text';

  void changeText() {
    setState(() {
      text = 'Changed Text';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(16.0),
      child: Text(text),
    );
  }
}
