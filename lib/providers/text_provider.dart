import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class TextProvider with ChangeNotifier {
  String _text = "Default Text.";

  String get text => _text;

  setText(newText) {
    _text = newText;
    notifyListeners();
  }
}
