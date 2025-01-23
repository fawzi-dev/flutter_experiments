import 'package:flutter/material.dart';

/// A widget that draws a circle with text centered in it.
///
/// The [text] parameter is used to set the text displayed in the circle.
/// The [color] parameter is used to set the color of the circle.
class CircleText extends LeafRenderObjectWidget {
  final String text;
  final Color color;

  const CircleText({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderCircleText(text: text, color: color);
  }

  @override
  void updateRenderObject(BuildContext context, covariant RenderCircleText renderObject) {
    renderObject
      ..text = text
      ..color = color;
  }
}

class RenderCircleText extends RenderBox {
  String text;
  Color color;

  RenderCircleText({
    required this.text,
    required this.color,
  });

  @override
  void performLayout() {
    size = constraints.biggest;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;

    /// creating an object of paint then painting the circle based on [c,radius, and paint]
    final paint = Paint()..color = color;
    canvas.drawCircle(offset + Offset(size.width / 2, size.height / 2), size.width / 4, paint);

    final textPainter =
        TextPainter(text: TextSpan(text: text, style: TextStyle(color: Colors.white, fontSize: 20)), textDirection: TextDirection.ltr);

    textPainter.layout();
    textPainter.paint(canvas, offset + Offset(size.width / 2 - textPainter.width / 2, size.height / 2 - textPainter.height / 2));
  }
}
