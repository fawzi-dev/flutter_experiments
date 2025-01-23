import 'package:flutter/material.dart';
import 'package:flutter_experiments/experience/render-objects/render_objects_cs.dart';

class RenderObjectScreen extends StatelessWidget {
  const RenderObjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 150,
              height: 150,
              child: CircleText(
                text: 'Fawzi',
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
