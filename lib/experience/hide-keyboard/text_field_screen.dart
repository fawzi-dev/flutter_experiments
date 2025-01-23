import 'package:flutter/material.dart';
import 'package:flutter_experiments/experience/hide-keyboard/extensions/extentions_on_context.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
      ),
      body: TextField(
        onTapOutside: (event) => context.hideKeyboard(),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter your name',
        ),
      ),
    );
  }
}
