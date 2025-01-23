import 'package:flutter/material.dart';

extension HideKeyboard on BuildContext {
  /// This method is used to hide the keyboard
  void hideKeyboard() {
    /// Hide the keyboard
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
