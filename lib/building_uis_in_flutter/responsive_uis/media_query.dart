
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MediaQueryDemo extends StatelessWidget {
  const MediaQueryDemo({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size screenSize = mediaQueryData.size;
    double devicePixelRatio = mediaQueryData.devicePixelRatio;
    EdgeInsets padding = mediaQueryData.padding;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: screenSize.width * 0.8,
            height: screenSize.height * 0.5,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Device Pixel Ratio: $devicePixelRatio\nPadding: $padding',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}