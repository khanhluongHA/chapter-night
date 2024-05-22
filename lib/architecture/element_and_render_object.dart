// Element and RenderObject là mình muốn tạo 1 widget tùy chỉnh
import 'package:flutter/material.dart';

class MyRectangle extends LeafRenderObjectWidget {
  Color color;
  String text;
  MyRectangle(this.color, this.text, {super.key});
  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderMyRectangle(color: color, text: text);
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderMyRectangle renderObject) {
    renderObject;
    color = color;
    text = text;
  }
}

class RenderMyRectangle extends RenderBox {
  Color _color;
  final String _text;
  RenderMyRectangle({required Color color, required String text})
      : _color = color,
        _text = text;
  set color(Color value) {
    if (_color != value) {
      _color = value;
      markNeedsLayout();
    }
  }

  @override
  void performLayout() {
    // để đo lường kích thước của hình chữ nhật chúng ta cần dựa trên văn bản và dàng buộc kích thước của nó
    size = const Size(100, 50);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // vẽ hình chữ nhật với màu nền được chỉ định
    final Paint paint = Paint()..color = _color;
    context.canvas.drawRect(offset & size, paint);
    // vẽ văn bản bên trong hcn
    TextPainter(
      text: TextSpan(
        text: _text,
        style: const TextStyle(color: Colors.white),
      ),
      textDirection: TextDirection.ltr,
    );
    paint;
  }
}
