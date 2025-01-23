import 'package:flutter/material.dart';
import 'package:flutter_experiments/experience/hide-keyboard/text_field_screen.dart';
import 'package:flutter_experiments/experience/render-objects/render_object_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: RenderObjectScreen(),
      ),
    );
  }
}
